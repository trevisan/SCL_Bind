#include <iostream>
#include <SCL.hxx>
#include <SCL_IED.hxx>

using namespace std;

int main(int argc, char *argv[])
{

    // Get file_name from command line argument
    string* file_name;

    if (argc != 2)
    {
        cout << "Error: wrong number of arguments!" << endl;
        cout << "Enter 'scl_bind scl_filename' " << endl;
        return 1;
    }
    else
    {
        file_name = new string(argv[1]);
        cout << "==================" << endl;
        cout << "    SCL_Bind" << endl;
        cout << "==================" << endl;

    }


    try
    {            
        // Instantiate a SCL object from XML file
        auto_ptr<SCL::SCL> scl (SCL::SCL_(*file_name, xml_schema::flags::dont_validate));

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
