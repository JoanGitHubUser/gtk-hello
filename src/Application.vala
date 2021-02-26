public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
          application_id: "com.github.JoanGitHubUser.gtk-hello",    
          flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 400,
            title = "Hello World"
        };
        /* ! new Gtk.Button.with_label ("Click me !") */
        var button_hello = new Gtk.Button ()  {
            label = "Press me !",
            margin = 50
        };

        button_hello.clicked.connect(() => {
            button_hello.label = "Hello Word!";
            button_hello.sensitive = false;
        });

        main_window.add (button_hello);        
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
