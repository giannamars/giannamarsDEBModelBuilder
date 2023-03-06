/*
A KBase module: giannamarsDEBModelBuilder
*/

module giannamarsDEBModelBuilder {
    typedef structure {
        string report_name;
        string report_ref;
    } ReportResults;

    /*
        This example function accepts any number of parameters and returns results in a KBaseReport
    */
    funcdef run_giannamarsDEBModelBuilder(mapping<string,UnspecifiedObject> params) returns (ReportResults output) authentication required;

};
