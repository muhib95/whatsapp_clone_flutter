import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E55),
          title: Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.white.withOpacity(.7),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(.7),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white.withOpacity(.7),
                )),
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt_rounded),
                ),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ]),
        ),
        body: TabBarView(children: [
          Text('1st'),
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExIVFRUVFxYTFxgXFRUVFhUVFRUWFxcWFxUYHSggGBolHRUVITEhJSkrLi4uFx8zODMsNyguLisBCgoKDg0OGxAQGi0lICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAIHAQj/xABJEAACAQMCBAMFBAcFBQYHAAABAgMABBESIQUTMUEGIlEUMmFxgSORobEHM0JSssHRFWJyc3QWNIKzwiTD0uHw8TVEU1SDk7T/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMEAAX/xAAkEQACAgICAQUBAQEAAAAAAAAAAQIRAyESMUEEEyIyUWGBQv/aAAwDAQACEQMRAD8A6VJvmvbaEk7HFZI4FFcIXUSe1YYW2ZIR2evPyhvSl+K6myKa8dtdsj0qv2toQ2T0qzZ6MUqsf8Munfc9KeAUDwqPC9KPqsFolLsHMuk79K25gbpW00QYb1BEmDig7QCQsQOlCXl15SMUwbpQ6wqc1zsKo5/fWspJK5HfrSHil7MvlJP310zisagHAqkcQ4eztk9KzTW9G3FNNbFXDEL9SfnT5blbVdWCzH3VGSWPyHaoLd0jPLUFn/ujOn4n0o68m+yH25LsAcIqL27hlw3yJFa/T+nb3Iz5866Rp/b0+nU5IzkgKAcD4qu+KLjvNRZZDlgMqDnzj1B9PypNBMwC80oCAQRh485390kj6jIoaS85ZHOGuNTmOTJ1R5/ZJB6fP8a9FRilRhlbLEkkZBDdcZHZsZxjY7j40HcvGPdLZHVc5b6eta+2RyLpJG/uv6H0z/LpQV4BLGQzhZY89z9CPh8aWWGEu0Kg23ZW91s/DuPoa9kmwcVQb/jU0RAkOr911bcfDI64phYeJRLgMRq7H1/oaw5MKi9FYos0sue9RRRE9zQhmOelNuCSq2R3zU6KuiCSwYioJuHgHcH7zVvWIFPjS6+QBdxvRaDaoqE8BU9TitA5B6n76ZcSj6YpYyYpaOj/AAgml67n76HWX4n761unqAE/SlSFmwzWfU/fWUPzfjWUaJ8jofEJWDYNWvgCYiHxpQbdXm36VZo1CjA6V0Y0wwhTA+KkkYApa6YWnpUGlnFQAK5ryaIvwe2N6AMGmkcgIyKrsIBFHW0pTvmujOjpR8jeh3kGoVAWaQbHAry0sip3OaflYlBsnSgrklQcUfioZYs0WgIrLxSSHJzQkpRGIc+6MkD3t6aeKuLLZ2zy7Z2Vc9Cx6Vyz/bIOSG0k+gB3+85B+WaOHFHlbGlkdUi7+3DSdAAQnbHUZ7H1/wDOq5xF4z0k0MPUHSfmTtSSTjCsdmaNh3R8H6qwwfuoeTip7up+aEfivl/Ct7yIzqA5W6lA6ah6xnWv3Zb86Fm4wQCdAPZgCMj5ggYpBcXcOc9D6qwz+BBpZfcROQVkLf4tyB6BvT4GkeRINDu34yiMdJwp95SNhnuPT5VFdcVIcEnI7EHcA9vlVRuZyTmtluWxpNSecPEbz3uMjsTse31/rUAiAbIbSTv2K/QjoaWxz4PwPUVJzNOCD8xSOdhovHAOLscRyb9g39f61YYZjG+Qa51w6+UNn3Tt23+mBvV3huC8av1+mKnKPlHPotsXFSV60PcX+djVdS6I71kl18am2COxvNODQU3WhVnqKaU+tFdDrTIblcnFaFMV7zd61eXGaRiz7IsLWVBzqyhTJnVuDo7zZO2nrVtkYAAGq74YkyWOO9OJfM3ypkVxr9JZJdIpHeXBd8U3njNL3UZzXSLxEnGL3kLkmlnh/wAW85yh7bA0L44uAxCZoXgfCgMEbVllKpaNKjcdnTLSc7BaaRk43qjpxY25GvJBq4cOvFlQMpyDWnHkUjLkg4hLOB1rzWPWtLqPKkUkMUg75p5SaYqVnP8A9NnEyQkII0gh+hznfv0rjd4SzZ6aq6r+kiV1lCMM6gGxgEemd+3wqgwcNaSYYXAJHyp5SVWgKLboa8A8MM6g7700n8CyfsrXSvDvCVSNdt8U75Y6YrLFy7s2yjBaSOFTeCLn92hl8G3AOGQj49vvrvzxfCtDAD2FPyf6TcIfhw5PBMp6L/StH8Fz/u13YQqOw/CopdPpR/0PGP4cCbwvKDuppLdWRRsNkV3+/tlYdK5h43sNByPWhGT5UwZMK4WiuWaRnCkMCeh3/mcV0jh1qBbBVIOM9/jv8q5fBb4OSTjGdvwq5+GbvKlDncfSvQhTg0zzmtoLxQk82OlGyGlV76VgLaiiaG5yaJ15pREN6PhNddCqVhDJQ0ncUQj52qKeuKSimDaBWVtg+lZXC8UfQVpZqgwBXkcXnJqWWYCooX3qjaYUqNrseWq5eS4ppxviSxrjO9UfiXFDipTki+KDYruYOdMSfWrBZwBMAdqRcLclsj1qzW1sSMmsvZqeiDikauu9O+BHlRgUjmQ6sdqZcO4guMHttT4tMlk2iw2l2X7YFT3AwM0qteIou2a8vuLA+VTkn0rSpKjM07OV/pWu83S4J/VgfiaE8E2JlfIGwO9OvHfh9pbmFdEhaVCFCcse5uxJkYDoRQXhHxDHZl7YWd5LIrENojjYqRtggOfvoyjJxHg0pWdVsYNht0pgsQqk/wC36IPNa3cXrzLeT/oDVov6QoWOF83qF3YfEp7w+ooKLSGb5Mu7RCoTDSrh3iGOXGlutNnnwMmktMamjQ24oO4taGufEES9XAx8aH/2lh/fGPnRTTDUkDcQGK5344k6eldFnvIpc6GB+Rqm+MLDXC3qN/uqbtSst9oNHN0mG9WPww+p8DspqoCrr4Dh3kfG2APqd/6VtU3xZ5ij8hlOcZpXMQd6ZcUGCaVoMmoCzeyMLvtRUZPepEg71PBbkmhR0UiKPrTCG3GPWo5LfFT2pycVxoS0eckelZTT2I/un7qyusPE6VM2pvhW0ZrWSDSM1Fw/JJNdVC9iPxJBqbPpVJ4o3arp4rmKn4GqK0uuUCs89s2Y9RLD4ZsiFDGrYigLilNkuEAAo9JCBTJUJJtgs8XUn6VWb6Uq3lqzMxballzw/U21JJfg8WvJpw5WcdasnB+GhdyN6zg3CgoGasCwADatEIPtmbJPdI5H41WSe0d5dzA7FSeoBO6048BRmC3YBfTp3OBqP35rX9IqkQSQRqTrSRzj1G5/KrB4ajBtoWHRkDj4htx+dLjbpps0ZkrUkuyvXjXE0miNPq3Sqfe8Plnk5bxLqBPVQMFc9/8A2rrHErJiMxjBHocUlbg9zI2cKmdicAnH86tHiL9vJzFr64sSsgJI1aSkmWH/AAsfNj4Z2pvN+lV5EK+zKMDGRMd8/DRtTDi3hf2riENgHJSNefcOP2QThVHYMeg+p7Vr+lzwzDbQxywrgKQrDrt2Oa5pfhN3fxZW5ZJphkxourcBmkZjnpsmmo1sinvSRRt+6Y5P+pvzq7LYlQkyKGwAwxjIyOopOltGbjnFDnOoq265+78KdKKiO4NvWwWyW7XeFoWI7MsiH8HIrc8YuZZPZ3s3MrKTpjOSR3ZVOzD/AIqslvYljqXbPwxj/wAqRePLNibYKxEhdlDKSGA05OCNx3qdq97QZx4q4spV1wMqkk2s4R9DI6aJA+dwVDHpVz8NcLlithIyELJ5s/l8qUeHLNpUIfBAkIA7nfJLE9d6sFm7mSTLEqF04zt12GPpSPMuXGgR9NcOdi7iG5xUtnw0d604nswNN+GEPgj6+tF9mNxV7AZLMg4Ao22ttIpxJGBS28mC0w0IeSIRA52ziieD2wMm4x6U54RwwFQTvRlzw8JuBikexZZNhnsi/CspX7Y/w/GspKZ3uIsfiG4IAAonhSjQKD4nGWovh0ZCVR9lPBWfGW9VDhlqTJ02FWTxbMdeOwr3w9ACM+tSrbNSdRQ3sIdhU8o7UUiADNL2lyxrmInZvyhsB1NMLfhQxk9aCikCsCaeJcAjangl5Jzb8C+SfSdOQKlbiYUb0i43MQ+aBEhbck4oSyNdBjjvY+NsJjqIGnff57FT8DSbh/MsU5DxvLbjPKeMa5YlJJ5ckQ3dR0DJk4wCNs0Tw/jCoSjDKnf5GmcNwrjUowMkUYyVDtN6A4vFVgPeuo0PpITE31WQAj7qiuvGEcn2VkpuZm2XAZYV/vPKRggei5Na8VumGcfjQvBFkjJnPmJGMfD4GisiukhvZ1bY68JeHvZUdpH5txM3MmkxjU3ZVHZF6Af1ofxrwP2uCSL95dvgw3H40VFx9GXIyD0IOxB9KX3/AIkiQ7uPl1ovJF6Fhjndld/R/eFoPZ5dprf7GRT1AGysfgR39QassnCIycgCqfx+4jnmSeBmjmUEc2PY4/dbIw4/ukEUVacdvVGCLab4kSQN9dOpfuAo84PyM8c4+Cy+zBdgKqvGIdd3jGRbxFj/AJknQfPSPxpgeK3j9Ftov7wMk7D4gMFXPzBrVLURRuQSzuS7u27O56s39PpSycfDOUZNqyk2/D2glRVOde5+/erFydKn+8dRphb8O5hDDc48zYx9FHYVNeWRGSaTHDdj+ozfFQRTuIREkUy4Xa43ok2uTk1NnSKsZHC3Z5d3ekUitGaecAdAcmt+K3HWnHgaw31EbneuaBPqkXnhVvhRRd1ECKngjwKxhXGNuhN7EPSsprpFZQoHIEkmzTO1HkqC+RR9aGa7IU4rjb30Urxc/wBoV9TTvgsIVAfhVf4ouucfOrGinQAKmjRLpIIN0WOkUR7OFGa9srUKM963k3rqEv8ABVdTgVkHFMClviBCOhpBBfOrDPSpydFowtFvuvtN6XXsmlcVE/iBEXcikVz4gV2wDmlbsKjQRbTFTk1a/C92JFdfQg/ft/Kq3gMvzqfw9LypR6N5T9e9NHTOl0WW+jGCaV298zbK6gDYjbanF0mpSPWk83g+3ch3DA7bqzL9DjqKotA1WyvcU4bLqLRXCB+vvYBHpSFuD3OrWx1nvhs1fbnw1bqvkZ1PxOtfuJz+NV+44Cy5K3QU+gjI/wCqi4OyqSa7MsbxFGHQjtn+ooqPGcr0NJm4bdE5aVWQf3MN9TTvhkZCb9anOgxsOtz99N7ThpmGzacb5xnPwIpZbjarb4dH2WfUn8Nv5U2KNshnm0rRLY8KWMdck9TjH3CguL2oINPSaTcZmAU1ppIxW27ZSJzgkULcttUt3JuaClfalNFC425eQKO5rpfhzhoRRVQ8N2uX1477V0ayXAoPZky5PlQSahY1KTWgSgQeyHevKn5ZrKFs6hVNMXb5VDdthTU9hbkjJpfxt8KaVukeljVsqVzdaZNVWjgNwZcHG1UVWLykfHFdM8N2wVBtU4bZXK6Q0aLbFAzHGaZXMoAqv3kpJqkiEBTxoE1XpSD9KfX7E7Gg5LRdOahNmqJTuMy4zUPCbIsQQNq08Q7uFFXXwrwv7MEimS1QL+WwzhvDMqKYx8N0nNTQHRtTSJQwqsYIjOTsXyS6cL69P6Uzt49aevag+IWoYac4J6H0PY0qt+OsnlJ0lTpI36/+t6akdG30DeIOF3aZaA5H7ppTZx3TH7QaPpTq48TnoTQreIlxjrnrmlaXgupSXZ5efZr6/wA6AgucD40FxXjakFmPyFJILiSU7ZVfXuR8qVxrsZSt0i2RXmo6Rv6nsPgPjXRfDgHs6fI/ma5rwyIKoAFNOB38sd+iKWMUkTO41AKjRkDUQeuQwGBv09KthjZn9VqJ0aQ7VUvEU+NqtEsg05HQiqfxdNbUZPZlhtlbZCTmtfZSxA9acx2VFWln5hXFpOkH8E4YFUVYFTFQ2Y2onNcYHtmuKljSozUsZrkNCrN9FZXuqspqRbQMiaVxVW8TDyGrPOc1UfFk2EPwrNk6NWHsrXh7h51avU5q/QT6FqueFRlcnvVr5IroqkGbtgct2WofGaPmjAqDoKXtnLRXuMbCk0k7hSTT6/8AM1LeOSKseKSiyZSHGqYE9jXV/DsX2Y27VzHhqBph866vwuVVQVTH2JPokurWoIGIPWmEj6qVXrhNTk4VQWY4JwB8gevSna3SJpqtm3FroRIZpGCqu4ySNZG+hTg5bbpQXFeFxTLzOjaQVdeuOo+YqkeIPETTsrtMbbCmSOFl5kWnGhGUkDU7Bmz6Y2Hc2bwbxf2m0BIAZC0ZAGB5emB8sUZx4nY3ZVOKWssR2ZW+YIpNJdSk42+matHHoWJIqvNan0qPuNGx4kweKEs2WOT+VP7CHFAwQ460dFNgdaRybY6iorQ5WUKKO8MzhWeV4yRpDjIwWiJKry0dRzMtgnS2MFR1qu2h58gi1KF/aLvylPogkwdLN0G3rVs4XFInsrRQM2obNNJzY7aMk6RG/UNpBXcYO29ej6aOrZ5vrJ/8otkD5UqXVyDjKpoAGOmMncbj8OoNC+wajmh7HiAeQiKQSFXdDHpUsravMZHUkJsDpOwPQ5NPoiM7fdkEj7qacLZlhOtC0cNraOwwabZFYCKXgNKbaB0ixW2mpsis2ruBDgQlaxSalJFeZFd7ZyizXXWV7kVlD22NsWX11gVRfEN5qOKuV6Qymuc8Yl+1A+NY5O2epjSUS4eG4sKKszbCq/4ebyiml1L2oyeibVs01ZNRXNb2hBNR8UcKtLQ3miv3kuDVZ8QzFth2p20mokmgr+08hNTuy9Ff8JwmSbHpvXXuG8O6d6oX6P7DzMcblsfSur28ekYA7dRjetWKF7MmWdaNUslHWkXie7SOKRcDGF2SRUlJbYEZI2zkY69celPLq6C+XUods6QzackDPofyqp8ZeRMHmWok06tbR5kUeYliBjO5I6D1+FaowS2ZnK3RyXjWqFGTKqHAIUNzSSMqcyH3QMDCj1roPgXhDQ2KZzqfU7Z65Y5pL4V8LpeXDSsVMcbYGldKuw/bwfXauty2yrFpA6AAVlkrs2J8WjmPE5TqORmlXKZj7tXSXgxeQ1O3AcDAFZOLZt9yKOe3SkUHHG8jhEBLNsBv2GSfkACfpV0ufDZySSfpQvD7OOFy2bd21JAUmLI8byOuJFDDzADfbr61XDhcpUTzZoxjZLwSKGFAymOUq5Z3WJlubcRajzTHJk7llXBA8uOtSpZSrNIyW0gl5aSNAZFMFymW1PKTlRgvnlr3PftNeXJ5mqW7sl1c135Yw06xsM2zlicKyqfU9cVMsQTlo6zPrcmOCN8QRLKNK4uFUEYUkaS2N9h0r10qVI8Ztt2zd4FClo2kCRRIDDFFJC7ljrUs2MYU56DoTvVotJSdCsQG5asAM4YDHuq2G229eozSKIyxo7K8jEFQWmkLbqd40iQsJQBnO4Y9MnsXZ3416k1GMBmGq3kSRnDFGGrC6EBPcH3t8bV0gIdyk9Rse4zkfeNqFNya3aLHXYLmQ++gy2chmD4JGe9SRqHXOoNuQGGn6ZIOD86jJfg6/oN7Waz2w1I9vjtWhhqTyNFOKNDfGtTxA16betDaV3uMPBGf2gayvPY6yu9xncUR3/lQ1ze8OZsn1rpfFItakCqFxCwKyjUKyNbs2ReqLDwu/VVG+K2vOLA9DSGSyORgmmljw3A3qbUmOlFbIl4uyda9m4uZBgVrxSMAYoewKgb0Ha0NS7CIoc1FxoeTSOpo+2nU9KHunHMXPY0RbdjnwXwoxgHGD12xn8atmepwdjjfpt6AfnQHC5BoGPUDp/PtRxI9Nx8SOo7Hv869HGqiedldyK/4oiZJEnit3uJtPKEeSsektq1FiMKwxt6/dSBuITSyvArzMVxok9n87Ek8yNnwECIVXcgE4G561buKtpUnV5QuSpdk1qPeHNJPY5232pXa3Zm2JUc3GFi1uqpjJRnXCmXrnOOoxnG9l0TTp2Qfo+tnjjfmZ1mRyScDOT12q2vuMUn4Kd3AjMaK2hM4BKqAuSB0OQfupwBWOSptGu7pkaRAb+tRuKnelvE71IkZ3dVABOCdz8h1NBJt0gp1tkfEmIR9ABYIzAliunH7QA3bHXA9Md6QxF5oyscsVzPFriMjR6YXWVAzamGrLHphWXcdMUwup5ZCSY4bi0ABGpNLu75UIgOQ2Dgbge96isWCWQ8t5NQDgubdkVSo3SOSJ9wcjSx7jrgbDZCPFUZZy5MWjUzMFktDcGNVeQAssi4I5Ogb6wRnY58x2GcUbO8duHkP2cXUokeIidutsw1azkDUMdqMdMKXYLEWcc8LplBIwI9Sbhc+XJyMDv3pB4nn5um25BmOh7kKrxgI0eAGRlyFwxzjJO/U4qi2LVHn9rHyRxLE0wlEUUUkRjuI1wH1FmJClRkg4II9cEUwuL9VlYtqV0Uz7SSzsyg4aJwhxGuoA4yR8OoqOBn1MyLPInOUyJPCuoMU8zo7aQAoAxnUOnSpbviMFuF5tyYkUcownQrBHI0lmQE42zkfEZrmBB0csjjnRS64/e0pGQ7BjuqhzgLjGGxnY0cVYaOvlyrJlDiPfDEBM52HpSSGWTycuEXULg4mM6LqRAWUBTtoHTPfqeu5No2rQdMSs6l5I1dn8ufKoCppU+6Ccdup60tDUOucdgQSvTJGk7jZssRkdulScqljBlOqSTSjKoKnlpy3z5cNpwx+WMYFFR3JUtuoQEEszgDJAOVKrgqfXY5pJQsKdE7RVoY6JhdXUEEHIzsc/jW3KrPKNMomCaKyi+XWUtBsCMFVLxbEOvpV65O1c78e3BHlHWhNUh8buR7YrkA0eZcUl8MTFl3o3iMhBwKimjTWxfxibeo7chgADWl6hYUXwKxGcmkkrZS6RPZcMK+bNKeIz/bKue9W29kCocVzi/mZrtB6nA+ZNco7oTlq2do4EuIlx8z3z/SipYSTnyggndl1kfEHOwxQ3D4FjCKSdaLucggaiMg/UbZomTSDp3z72Bkk7jfHYdq9KKpUeZJ22yOZvIRrJI2JVQzfdjAOD0xVcjg0BouSZtJZtAdnUo+dJnLZBYlcDGdPyzVlllz7oBJyNJcofjtjt1zSi6sHDB1eTOoyEQJGiso8uGL4zsehJPcYp4sVk/CJ0YtoRVA0+5pVRqGcMuzBgQevw+OGwpFf3BH7DSyNuiMsblY0YanGkjOM5Hm3OB1ppFISB/Os+ZVs0YtqieRgAWY4AGSfQCuOeJ5ZLm7Mh5KBXEccsjMqqi6wu6bqWJ6nqcADauk+LLtY7WXU2nK6d9veIUb9QMnrvjrXAZ7uRwoYalGl8mR5FTQcM5jJGcnt6dqbGqVs6TOir4/UuYXiM7LJGgCT5cuo3khYYzsNz5TnOfiwTxdw3UoILEyasGPU6M2QebJluYRnoemB1wDVA4aOYslw7RlVeRl+zflqxA0k8rLByTsjHfOfmWbUNapq5VuY/tndC74ZTsk0aj7ORs5Jc98etVUmhGkzo6eJrdT9nIjyMSW5cbKCo063kTBXUAOuoHtnfFVy6uIJ7xSY7uWaQo8MPNZI1g2LSKQ4xkD3WPYetLrnhpybcQSEJH7XrX2cSMxbJDaXwYjt5VwcDHpUtpwVlZhOeHROZYpOU2wWMIGJU69SgjyFcYPpg06f4BxRYr7isspeKOO/HnDrJqhQCBCvMIJP2mDnAwScgZ61vw1p5DPJDPzFeSMqs9s7O0ShAXzkZTrjAGfNjet4bKLQvtGmN01qsUr6II0kJCmJV3KYXox+GwwAVecwoRLGbdU0JzeaXnVFB88SIvcgDbHfIOKIDdoYBqBWInmMxBjfUhA2kManyIApAHfY5BJre2udbJ5bp+YrLz0wqzAbrhWPkXzE52+oOKV8c4tLFHBj2kyykRRPEseJYWdfNIWBKuVORv132zRVlYSgMSsvKdV5Mk0o5toDqDdtY94/tHsCQOnWELa7TmCJDhyqq3JXCQOM45+5U+n/AAkUXC2C/L5pIIMmBGqGTbDqrj3Dg5II6d+tAwX8ShF9ojYEezKkOl3ncHTqcHOM6Wz8z5qFv7WWSRZRhIwjKA0/KiVlODHpCanxhjg+U464NEVlitbhg5GC5zoLBAqpjfQy5zkA9dxg05U5AI771TJHmlDLbJZSqSFLK5ULqXq4XLBsqQCMnf5094HKB5AFxjJ0MzKsmwZMH3SPTPboKlkjasMXTG9ZWVlRociQ5qveIPCouGDa8EfCrBbnat5JcUrSa2MrT0c7k4RJbHB3B7itLjfc1f76IOuKpPG1CED41CcK6NOKfJ7FM7A0xsEwuaFfSVzUkM3kwDUvJZ9Eoy+R2qDhfhoGQzuPdyRtqxjvjvU/B4nZ8dqvEQCJnvjAwM7nYfjV8UN7M+WdKkB8Ni08tY3OlQxaNkCyNqyQSSfdB+H1pi7bAeYjO+k7jY+8c/lQfDlzgnJI1jL45mxwV26Ln8hU6dMuykg9gdIPXSO5+Jra+zAjJ17g6sDURkq528ulgRgfA9c/eHfLkKeS8u+6HADdAXcHy7Zxjv1HSpopgdziQoQToQhVz5WIO+rbPTPQ1p7OdTEqWJ2zJMQrEDbTGuQB9B06GuCK5uGL5WKNGQCA0URLoWBV1i5fujo2dPr13rOGXiw2rSySosKAhHdWiZghKhpNYGWYrnKjfPTuVXjbjbWpjEah5AQujmyaUyrY1KpBmLZ2zjHxrn3Dpby5laSVmVQytIdIeRVydCwQFTuCv7IyQd810mnpjRTQ98beJJLnEFszBDJpdNcSyymQBl5aHJ5fXqarycLtYipLJlpwOZM51gIfMJbRRiRAwxqz3+GasXAuDs8ankjE43aFUJuBzh+vOjFsRvnHcnBBGKawJpa2VI4gsUjoXMLz+yFCSY9Sn7R2BGWJ260KsbQv4ZwyZxqmi+xMy3KyQyyQc1WJEfJtQ2kNnB8x1EY6miSdAjaUhMHnsoMssl1IXISK5CqArAAeU5wRjoDTThdov2UyRM5ZgWkkcwyM5JA9nDdIdyxUY29dwSbW7cI2IZodcvvwhZw+gKks7bFnOFHVew6kUyQLFVsEWSYxC2MUTGRQLRzzml8r6QrZdEGxwNyB6U6tp+U7JpRk1LFy+Vy3SOTUzSSHokWdtwM6etS2UhjXU3tEgCtoCoiM1tjOtskHOSOmltht66XV/iPmZltQUErO4SZHwRytZUsQCAf3fSmAQy24k5sVq0QYlElAYlp0AyVickCMBSQNOoDPbFeDiEMeuT2hY1jkWIvKnNuVIUqEDHJZCxIBI6lqikv4RGZpJZ5fZ254SOBoMPId1Y4B/azjI2bfVmlniziZjfkr7JEI0LxmZmlaUXAOY1XP6zVvvkHUDXBNbI3MkgcyTQpA7C60Sh5pNKl4pBDhuWhPVPTOxG9G2SwTOnL5+mRkkle4MqxORhuRoY41MWyMeXr73QgcG4TCFUakYuBAZbVy8t0zKrSrKSDoGkeo77rTDj/DnlCQ3JkS2dwkbR6TsI/shJHoJMpYdgOw60Tjee01TBJuTHFFy0FvGPPIr7xoJsrpZGOdK4zpX1FMbvEkhy4JEci+y3A0e6QVkA3yfdGTnr1HSgeEtEkrRRa0aPSZUueYxd2AAmVySVKqpPbb0xRF/CJRbkPHchZGURyupS4kCMHZHJYrjc6TkbfWuAEySsoQsqFWVpZ20NGFdYxhHxggEaiGYdVHqKHju5IZ4k/7MzykqEWVl0BVOltRyZMqF6r1zvvWkNxPDzHnZiZGBjUAzQrECcRyOFJjwWOXO3xONveJXghUSzR2quvk0KrSLy5ZMZEgUY3AbGOxHxogZbf7Rj/fFZVF/s+z/eh//e//AIayh7cTuRcRfqmxNRi85nu1TuK3+X696tfA4xywa85S5G2ePirDC+BuapfjEkrnHQ0/4jc7nB6GogqyIQa5TUtHKPHZRIrjbFMoI2IGKDveH6ZsDpVosQiqKnWy0pa0H+HLXAyRvTe9AKMGxpxuS5XG+xyN9q14Wo07Uu8TXmgYWSHUpV9Dqx8h8rMxXoADnOMbVrxq2Ycr0FcNkXGI2hAwzYQ621asFsdSP5mixIVXLMThSdeg8zPfEYXpjFLPD4i5QaLAUhgAoGpsHcxvt5T/ADHSmMzlUwInchScavMRj3dR2LfDPbrV32QRALnVhQZNm97RodDsVVwR7pGd8d+xohI2HmZUDAnSTlyuo4HmJydXw6VDazaiHKtE2M6W0GVkwCdQBOFyCMdc+lDXk5Y6eSrEMYwkkypqLAsxYLkMGGMDGQew60AiDxDwx5JyUK8xGUwBEEmh3XSVuHOQq9SAMAZ70dY8G5aiK3SVDDzNGtVWPmOTqLN1cHUT/Q0DezpNNJBz3QlUCCOGQJKitl+Y2kswTBGsMo83Y09FsMl1R2ChuUvOZkn1LnKDVt1YZPxPxpggl5aQa2bTJIZlUOttq0GFVIwd9JAfJyMHzY6ZrRo5VcSNPPEpB1Ly05fMZVVI41wW1YJ3wcn47UfBbLoVVSZVUfZgvyiIU05Q4OTuP2tzkb1tCp0iUpPG26BGk1lmZsb5LBemNRx1rggd9bKvlMkI0hCkdwQxjEb5wGDZIb1J7Dr21tBq2TKiFmSZYJSysXCkJEDsBkjONGN/jXsodcx6bXlnmEJNIXdSp6lt8gnG3bPXahuIXcIHOle3xpjlLRgLMOwWJz3yvrkAnptROA8pCscxS7hiQG3YF1bW6tiNWQsQEzqHYeb61Pxa8UP9qt2kzwK5SLU8QaMhg2iPV5QcjfYjqCaG4jLNBGwa3juFikEhkmnV9Uc2oDWgHvAHT0bptmvGvGhnTVaTMSro01tqmQtJ9oIwXJKqM/LOMY7E4yfj4J+yniBOJWuW1pbXLKADbhDka9OAcHIxkZxgL4+JlGSAa0JV7wxQW0uuJ8gBDzOsRLb4UDr2NecjEMLciKOFoZsw3UpH/aAV+0CFDpl79O+MAmpWvFSVmmmKSmGNVi1L7WZJUALsynZF222AwzHGBXBGVv5IxJPcBpjmNXtELyuJGMzZTDYJXSQRsADjripjkfrVgJVEMaRu+ppmYjnMWXZlON98ZOe1b2MqxxoFhWNpM6I4Ch1yjUSwmyEwHDn46hkdqla/ZFyJG0iJhGzQAmSXLCVWCb5BVNwoG3U0DiNDOj+7JD/91L5JuZKYgE0Z3x/hUAZOw3NQcSWQHmMllNEoSIyL0iRh+sdCxGAdJyDnAOKF4fBFHKrxS3o9oVXi1am1tjMz6TlSeXjqoxjb0BMoVjG6y2iMsSmMsdLNhlOqUDTjGkjT0yx6YpkBi/hcwjDwW7W5ERXn3SshMlvKzMSI2yCy6tzkj0z0p3aWkRJ5AjMUiqHaGXBYKWClU6KQxB2x3pRPHJ9qvKsJtFxHNnUI1+10bdDq3O5J3G2D0pvcLFHHpnFrCpfEYXYrgltPMGNOdirADGRRAwv+0Lr/AOjN90X9ayl3Pj9OJ/e//irKFfwFlau/fHzq98G/VD5VlZXk4z08/SEd11b5n86M4b0rKylw/dnZfqIeMfrRU69BWVlNLtg8It3A/dFbcf8A1cn+RL+QrKyteDsx5gHwx/ull/lD8lplxT9bbf5jfwmsrKuyKNLv9XL/AIj/AA1zrxd+st/8TfwmsrKaBxeODf8Ayn+RL+cdC8E923+Uf8E1e1lAIkvP1sHyP/OWrvc9ZP8ABJ/DHWVlGfgKOaeOf1zf4V/M1Y/0d/7l/wAcn5GsrKef1QDnnjDpF/p/+8arl+j3/wCHWn+qb8nrKylkHwVDh3+9p/rLv/lvVq4L+v8A/wAVx/GKysooEjPD/wDuD/5Y/wD6Gq0eDv1EX+K4/wCa1ZWUku2M+jfhHuQf5LfxrVV4p+vm/wBE38ArKyqQ7AxR4Q90f6ST+Fam8EfqT/p5P+aaysqj7F8HSKysrKgIf//Z'),
                ),
                title: Text('Muhibbul Hasan'),
                subtitle: Text(
                  'Hi there, I am Muhibbul Hasan. What is your name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '12:00 AM',
                      style: TextStyle(color: Color(0xFF10CE62)),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      // height: 15,
                      // width: 15,
                      decoration: BoxDecoration(
                        color: Color(0xFF10CE62),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "10",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Text('3rd'),
          Text('5th'),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Color(0xFF075E55),
        ),
      ),
    );
  }
}
