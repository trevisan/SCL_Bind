#include <iostream>
#include <SCL.hxx>
#include <SCL_IED.hxx>

using namespace std;

int main(int argc, char *argv[])
{


    try
    {        
        string file_name = "//home//trevisan//Projects//SCL_Bind//scl_files//RTDS_OK.scd";

        // Instantiate a SCL object from XML file
        auto_ptr<SCL::SCL> scl (SCL::SCL_(file_name, xml_schema::flags::dont_validate));

        cout << scl->Header().id() << endl;
        cout << scl->Header().nameStructure() << endl;

        // iterate over all IEDs (<IED> elements) and print out some information about them
        for (SCL::SCL::IED_const_iterator i (scl->IED().begin()); i != scl->IED().end(); i++ ) {

            cout << "----------------" << endl;
            cout << "  name: " << ((SCL::tIED)*i).name() << endl;
            cout << "  manufacturer:" << ((SCL::tIED)*i).manufacturer() << endl;
            cout << "  desc: " << ((SCL::tIED)*i).desc() << endl;
            cout << "  type: " << ((SCL::tIED)*i).type() << endl;
        }
    }
    catch (const xml_schema::exception& e)
    {
      cerr << e << endl;
      return 1;
    }
}
