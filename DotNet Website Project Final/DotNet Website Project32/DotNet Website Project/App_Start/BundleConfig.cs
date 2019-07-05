using System.Web;
using System.Web.Optimization;

namespace DotNet_Website_Project
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            //bundles.Add(new StyleBundle("~/Content/FrontendImages").Include(
            //  "~/Content/images/Frontend/*.png",
            //  "~/Content/images/Frontend/bg/*.png",
            //  "~/Content/images/Frontend/*.jpg"));

            bundles.Add(new StyleBundle("~/Content/Backend").Include(
            "~/Content/fonts/font-awesome.css",
            "~/Content/backendCSS/bootstrap.min.css",
            "~/Content/backendCSS/dataTables.bootstrap4.min.css",
            "~/Content/backendCSS/flag-icon.min.css",
            "~/Content/backendCSS/*.css"));

            bundles.Add(new StyleBundle("~/Content/FrontEnd").Include(
           "~/Content/frontendCSS",
           "~/Content/frontendCSS/bootstrap.min.css",
           "~/Content/frontendCSS/style.css",
           "~/Content/fonts/font-awesome.css",
           "~/Content/frontendCSS/base.css",
           "~/Content/frontendCSS/responsive.css",
           "~/Content/frontendCSS/colors/green.css"));

            bundles.Add(new ScriptBundle("~/bundles/BackendJS").Include(
                       "~/Scripts/Backend/jquery.min.js",
                        "~/Scripts/Backend/popper.js",
                        "~/Scripts/bootstrap.min.js",
                       "~/Scripts/Backend/main.js",

                         "~/Scripts/Backend/datatable/jquery.dataTables.min.js",
                        "~/Scripts/Backend/datatable/dataTables.bootstrap4.min.js",
                        "~/Scripts/Backend/datatable/buttons.colVis.min.js",
                        "~/Scripts/Backend/datatable/buttons.flash.min.js",
                        "~/Scripts/Backend/datatable/buttons.html5.min.js",
                        "~/Scripts/Backend/datatable/buttons.print.min.js",
                        "~/Scripts/Backend/datatable/datatables-init.js",
                        "~/Scripts/Backend/datatable/dataTables.buttons.min.js",
                        "~/Scripts/Backend/datatable/jszip.min.js",
                        "~/Scripts/Backend/datatable/pdfmake.min.js",
                         "~/Scripts/Backend/datatable/vfs_font.js"));

            bundles.Add(new ScriptBundle("~/bundles/FrontendJS").Include(
                              "~/Scripts/Frontend/waypoints.min.js",
                               "~/Scripts/Frontend/chosen.jquery.min.js",
                                   "~/Scripts/Frontend/custom.js",
                                                            "~/Scripts/bootstrap.min.js",

                                    "~/Scripts/Frontend/stacktable.js"));


            //  bundles.Add(new ScriptBundle("~/bundles/scripts").IncludeDirectory("~/Scripts/", "*.js", true));
            bundles.Add(new ScriptBundle("~/bundles/JQuery").Include(
                          "~/Scripts/JQuery/jquery-3.3.1.min.js",
                        "~/Scripts/JQuery/jquery.superfish.js",
                          "~/Scripts/JQuery/jquery.themepunch.tools.min.js",
                          "~/Scripts/JQuery/jquery.themepunch.revolution.min.js",
                          "~/Scripts/JQuery/jquery.themepunch.showbizpro.min.js",
                          "~/Scripts/JQuery/jquery.flexslider-min.js",
                            "~/Scripts/JQuery/jquery.magnific-popup.min.js",
                          "~/Scripts/JQuery/jquery.counterup.min.js",
                          "~/Scripts/JQuery/jquery.jpanelmenu.js"));



            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/modernizr-*"));
        }
    }
}
