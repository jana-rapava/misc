#include <string>
#include <stdlib.h>
#include <iostream>

struct fty_info_t {
        std::string name;
        int port;
};

int helper (std::string& uuid)
{
        uuid.assign ("foobar");
        return 0;
}

fty_info_t
*fty_info_new (void)
{
        fty_info_t *self = (fty_info_t *) malloc (sizeof (fty_info_t));
        int rv = helper (self->name);
        std::cout << self->name;
        self->port = 80;
        return self;
}

void
fty_info_destroy (fty_info_t **selfptr)
{
}

int main (void)
{
        fty_info_t *self = fty_info_new ();
}
