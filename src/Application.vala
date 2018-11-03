public class MyApp: Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.antonioJASR.gtk-hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button = new Gtk.Button.with_label ("Click me!");
        button.margin = 12;
        button.clicked.connect (() => {
            button.label = "Hello World";
            button.sensitive = false;
        });

        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        main_window.add (button);

        main_window.show_all();
    }



    public static int main (string [] args) {
        var app = new MyApp ();
        return app.run(args);
    }
}
