import 'package:flutter/material.dart';
 import '../widgets/post.dart';
 
 class Home extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           //create row in appbar
            title: Text('facebook', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue),),
            actions: [
                // R
                IconButton( icon:const Icon(Icons.search, size: 30.0, color:Colors.black, ), onPressed: () =>{}),
                IconButton(icon: const Icon(Icons.add, size: 30.0, color: Colors.black,), onPressed: () => {}),
                IconButton(icon: const Icon (Icons.menu, size: 30.0, color: Colors.black,), onPressed: () =>{})
              ],
         
              


              
      ),

      body:Padding(padding: const EdgeInsets.all(10.0),
      child: Column(
        
              children: [
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                IconButton(icon: const Icon(Icons.home, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
                IconButton(icon: const Icon(Icons.person, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
                IconButton(icon: const Icon(Icons.message_rounded, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
                IconButton(icon: const Icon(Icons.video_collection, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
                IconButton(icon: const Icon(Icons.notifications, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
                IconButton(icon: const Icon(Icons.business_center_outlined, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
   ],
   ),
   //horizontal line
   Divider(color: Colors.grey, height: 18.0, thickness: 1.0,),
      SizedBox(height: 10.0,),

             Expanded(
              child: ListView(
                children: [
                 
          Row(
            // add padding to the row
           

          
              children: [

                Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //circle avatar with image from network
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQApAMBEQACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAABgMFBwQBAgj/xABBEAABAwMBBAYIBAMGBwAAAAABAAIDBAURIQYSMUETIlFhcZEHFCMygaGx0UJiwfAVUnIWJDNDkqI0U2OCsuHx/8QAGwEBAAIDAQEAAAAAAAAAAAAAAAMEAQIFBgf/xAArEQACAgICAQQCAQQDAQAAAAAAAQIDBBEhMRIFEzJBIlFhFCMzcUKBsQb/2gAMAwEAAhEDEQA/ANwQAgBACAEBw3S7UVrh6StnbGDwbxc7wC2jFy6IrboVLcmJV127q5i5tshbBHwEkg3n+XAfNTxpX2cy31CT4gtCvV1tVWv3qyolnP8A1HkgfBSqKXRRlZOfyZwzVcMM8UEsgbNKcMZnU+A7Eb1wZjVOUXJdIgr7rRW5p9ZmAdx3GjecfgEckjerGst+KK6hvs1zrejpYWwU7G70sspyd3w4AkrTzcnwWbMONMNye2dk9+tcBLX1jHkcRGC/6LZzSIY4d8uVEjptoKOsnENJFUzP/LHgDvJJ0WPNM2nhWVx8ptIarbtDdLdgU9U8sH+XId9vz/QrMoRl2R15NtfTHCz7c0tQWxXKP1aQ/wCYDmM/qFBKlrlHRpz4S4nx/wCDZHI2RjXxua5rhlrmnIIUJfTTW0faGQQAgBACAEAIAQHhKAUdpNsWUZfS2zdlqBo6Xixnh2lTQqb5ZzsnNUPxr7ECpnmqp3z1ErpZX+89x1KspJdHJlJyflLsiQ1KDaHaAUO9S0mHVOOs4jIj+5/fco5T1wjo4uF7n5T6E8VU4qfWRM/p856TOucYUOzr+EfHx1wQkkuLiSXHUk8ShsutHuTuFmTuni3OhQzr7PPoFgwW1BfZ7dS9BSU9O3Or3uBJee06/Jbxm10VbcSNstybLS03273Gp6GOOjdzcXAtwPP9FupyZWuw6K4+T2NTd/cHSbu9jXdzj5qRHJl47/Hot7Ff62zSDoHb9OT14HnQ+HYVrOCkT0ZM6nx0aZZbxS3im6alectwHsd7zD3qrKLj2dum6Fq3EsVqTAgBACAEAIAygELbDakudJbrbIQ0dWaZvM82tP1KsVV/bOVmZj37cBJU5ywQFffa91utsk8QzKcMj7A48ytZvSLOLT71qi+jOyS5xJOSTkk81XPRJaXB4gBACAEAIAGhyOI1GEMNF3bNpa2kcyKYesxZxuu9/wCB/QreM2ilfhV2bkuGO8EnSwsk3Hs3hndeMEeKnT2cWcfGWjtttdU22sZU0khbK3t4OHYRzCxJJrTM12Srl5RNU2fvNPeaITxDdkGBLGeLHfbsKpzg4vR3qL43R8kWq1JwQAgBACAUtuL+aCD1GkfipmHXcDrGz7lTVQ29s5+bk+Efbj2Zzw4KycYEAIBc2zrYWUgoSN6WXD/6ADxPjghR2P6On6dVLz9xdCaNdBx4Y7+Sg2dhfosjs/emxCV1qrAw6g9C46eS1VkN9mzhJfRWy+xeWTezeOLZOqR8Cttmuz46WP8A5jP9QQxs7KC3V1ycBb6OoqQTjMURcPMaLDlFds2Sb6JbnZrnadz+J0FRSiQ4YZGYBPZnhlFOL6Y0/tHCtjA8bMWiCmpIq1xbLNMwPa7kwEcB396mhFdnEzcmU5uC4SL1SHPBAWFkus1ouDKqI5HCSP8AnbzHitZx8lolptdM/JGuUVVFWUsVRTu3o5W7zT3Km1p6PRQmpxUkTrBsCAEBy3Otit1DNVz+5E3OBxJ5ALMVt6NLJquDkzHayqmraqWqqHb0srt5xH08FdS0tHnJzc5OTIFk0BACAQNqnOdfJ948A0DwwFXn8megwVqhDh6IrRBO+ru87A+SCQQw5/C7dy5w78OAVDLm1qKOtiwTbkzW6JnvSduipItWP6Oh7GyDEjWvHY4ZW+2RaRGykpmHLKaFp7RGAnkx4r9EywZOa40FNc6KWiromyU8zd17SM/sjitoy8XtGsltaPzJcKV1DcaujcSTTTvh3jz3XEZ+S6sXtJlBrTHrZhxdY6YnsI+ZViv4o8/nLV8i0W5UBACAcvR7duiqH2uZ3Uky+HudzHx4/AqC6PHkdL0+7T9tmgqudcEAIBD9I9yzJT21h0GJpR5ho+vyVimP2cr1G3lVr/sSFOcsEAIAQCPtjERfG7jSelhaQAMknJGPkFXs4kd705+VOjS9jbf/AGQ2bkN6qYoHTTdM4E6RktaN3PM9XkuXbu+zUFs7teqK92PRcU+3WzcbejdcDnOc+ryY/wDFSLBv10QSzaXLsvbXeLdd43vtlZFUBmA/cOrSe0HUKGyqdb/JEkLYWfFnbyyoyQXqjbjZuneWuubXkHB6KN7x5gFWo4d0voryyql9klt2xsNzqWU9LXjpnnDGSxujLj2DeAysTxLoLbQhk1TekzH/AEj7O11n2gqaydvSUlbO+WGZvDrEktPYRk+I+KsUTUo6IbItMubBH0VlogRgmJriO86/qr8PijzOVLyul/s71sVwQAgJKeZ9PURTxHEkbw9p7wjW1o2jJxkpL6NmttWyuoYKqP3ZY2uA7MjgqLWno9JXNTgpI6Vg3AoDG77WfxC8VdSCS18hDP6RoPkFdgtRSPN3z9yxyOBbEQIAQHo1OACT2BH/ACZS3wc13ss1Pf8AZuqqA0dJViPc4ka7wyufbkRsUlH6PSYGJbQl7n2x8rbJbbtLHPdWvkjp2ncjLyGZPEkDieSo0Xzr2ofZ1simFmnIqK2l2UpLxTWitsT4J6lu9CXROG+PEHPL95CtqWVryTKjjj9aGOw2K2WZszrXEWNqCHOzIXcOGM8tVWtvnb8yaqmFfxLUgEEEAg8jzUJMxEvVn2N2XpTVXGjkkYXY1Mkmp1xgaDRXo5GTZ8X0U5UY8OZIsv7KbO1bGNktD6OR7d9nvxPHPIOeIWryciHyZsqKJ/ErvS7TmTZSmga4uc+sijDncSTkZK0of9zbNrU/FJFVU0M1vLYJmbuGgNIOQ4DsXVqtjZHcTyuXj2UWNWLshUhVBACAEBo3o5rOmtk9K4nep5NB+V2v1yq1y09nZ9Onutxf0NqhOgcd5qDS2msnHGOFxHjjRZitsjul41tmMAYAHYFePNAgBACAsdn42S3SLpADuhzgDzIH78lVzJNUs6XpMIzy4qX8nxXtfXXe3TSZLoq5jh3DJGPmFyYPSf8Ao97lUr2Y6+mh7onbtQDz4juI1UcHp7RQtXlHQux7DMO1MN5rLrV1UUEm/DBKS4sG8XBgcTo0E8hw810VmJR148nO/pXvvgb3necXEAEnOioye3suRXitHnJYMlJtjs5BtRao6OaQwvhkL43hu8DkYIcOeitUZPt8NcFa7H9x7TJ9m7ObJaW0MtbUVz9/pHTVDy4g4ADW5Jw0Aaa9q1uv9zhLSNqqXDlvbKr0hwGotNFGNf7/ABE+AyVHXxv/AETwj5WQX8ldMensMxkO86ne0sPcSNPmpcKTjdr9mn/0dMXQ5FIuyeGBACAEA1+jmfo7zNDylg+bSMfUqG5fjs6Hp0tWtftGkKsdkpNtHlmzFcRxLA3zcAt6/kirm/4JGT5yrhwAQAgBAS0876aeOaP3mOyO/wDYWlkFOLi/slptlTYrI/RftgjmrIa6laX073hxHNju8Lg2QlXJxZ9FxsyvKxtxYwQu3ZWu71EiF8xLJSFc8JAGSQEB4HDOMjPihk+kMAgKzaCF1RbjHG0PeXtxn8Pem9E+M1G1SYq3aSOloxb4nB0hcHTEcAexX8GmW/cZxPX/AFBWf2oMpl0zy4IAQAgL3Yl5ZtNSAab4e3/aT+ijt+Jbwnq9Gqqod4o9txnZis7tw+TgpKvkirm/4JGUq2cAEAIAQAgJqepnppN+CRzTnJAOjvFaWVxsWmianIspl5QY7wSsnhZLH7jwCF56cXGTR7umyNtanH7LWF+/E088arKI2tM+nNbI0tOoQx0Rx07I3bzQcpo2c2yZZNQQCvtlcHwmCkgkcx5BfIWnGnAD6q/hUqW5M4nq2VKtqEHoUeZPbxXTPPAgBACAEBdbGN3tp6Duc8/7HLS34Ms4a3fE1gKmd8rdpoen2fr2Yz7Fx8tf0W0HqSZDkx8qZL+DH1dPOggBACAEAIC92cuAjcaOV3Vccxkngexc7Nx9/wByJ3/R83wfsTfD6Gujk3X7h0B+q5iPRWI6ZImO4sBPjg+a2I0z4ZTsz1mO+MhKGWydoDRgADw0Q1Oeuq4aGmfUVBwxvLm48gO9SV1uySiiDIvjTBzkZzWVUtbVSVE567znA4Acgu5CChFRR4+62Vs3OX2QLYiBACAEAIBl9H8PSbQh+P8AChc7zwP1UVr/ABLvp8d3b/SNOVU7h8ysbJG6N4y1wII7ihhra0YnUwPpKmWmk96J5Yfhp+ivp7WzzM4uMnFkSGoIAQAgBACAZbTd8xxsrHdbHVl+/wB1wciKja0j6DgVytwq7N7bQ1U0wmYNRvePHvUSNZwcWTLJoQVdZDSM3pnje5NHEob11SsekIl/uE9dWe0OI2e4wcB9yuvhRiq1Jds8v605LKdbfCKxWzkAgBACAEAIB79GdIQ2trHDQlsTD4an6jyVe99I6vpsPlMeFAdQCgMy2/oDSXr1lrcRVTd7P5hoR9D8Vape46OJn1eNvkvsWVKUQQAgBAQVlZBQxGWpfutHAcST3BZ0b1wlN6iKVz2nqZcspvYM7ve8+SdHSrxIrmXI47OuldY6N0znF7o94lx1Of8A0uFkvd0me99Oj4YsI9cF1TVFVSYdTyvYOOnDyVcszqrnxJFoy63CojbiR2T/ACMATZVeNTFkkNA+R/SVTic8Wk5J8SsbNZ3KK8YGc7e1FbbNq3mGV7I5YmPYwe4RjB08Qu5gtOlHlfUqoyu3JdnzbL8yoDG1IDHO0Dx7p+yuOJxbcZrmJc8RkcFoVdAhgEAIA8NUBr2zFB/DbLTU7gBJub8n9R1P2VKcvKWz0WNV7dSRarUnBAUm11p/i1ofHG3M8XtIu0kcviFvXLxkVcun3aml2ZOrhwAQAgIa2qio6d88zsNaPM8gsm8IOcvFCJX1s1fUGaY4J91gOjR2BbHVrgoLSOjZ+101xuQjqqgMYOsIvxSnsCq5Vk64bijq+nUV32+Nj1/H7NJijzhjAAAMYA0AXDbPYcRXB2jQYCwRl5Qf8LHw4clqc+35snQjKHa7Z+hvdAXVcraaSAF0dURowcwfylWsW+yuX4rZWy6K7IblwZEI+iLow9rw1xAe3g7XiM8l6GL4POtabRe2G4He9UlJIP8Ahknh3LWS+ylk1f8ANF+tCkeIAQF/sZajcru18jc09MRI/sJ/CPP6KO2WolzCq9yzb6RqYCqHdPUAIDwjKAzjbmxGhqjcKZv92md1wB7jz+h+qs1T3wcbOx/CXnHpip8lMc8r669UVHlrpA+Qfgj1Px5BZ0Twx5yFm736qrY3RRxxxwn8PvO8/smmi/Rjwg+XyVEcgIw7QrOydxJQSCCCQQcgg4WXowm09odNltqGlzKG7StjycMqnnA8H/dc3IwdvygdzE9XcV43c/pj8bXWYBbGHAjILXDCoPGtX0dKPqeM18i7oLZW+qR+wPD+Yfda+xZ+itZl0yltM5L9V02z1J6xdZ2RF3+HCw70kh7Gj9eClrwrLHor2Z1cDJdodoqy+y+1PRUzT1IGO0Hee0rs4+LClcdnIvyZ3Pnr9FHLI2Npc8gBWG9FdLfRBS3Wop6rpaZsemmHtz/8UblszOqMo6kMdHtPE/DayF0R/nZ1gfhx+qxoozxGvgy7p6mCqZv08rJG9rTw+CFSUJR7R008MlRPHBCwvkkdutaOZWG9ciMXJ6Rrmztpjs9sjp24Mh60rx+J370VKcvJ7PQY9KqgolmtScEAIAQENVTRVcEkFQwPieMOaeYTeujWUVJeLMC9JVjvNgrutNJJapXewljG6P6H4/F8irtVikv5KX9NCrpCMBopTILII3xB3DRatGykfDXuZ1X8Am9GzSZOCHDTBWUaMbtjduKqwFlLWdJVW3+Te68P9Hd+Xh2LScNmyZo989Jdtt1phbY5IrhWTR5aQfZxDtd3/l49uFBGhylz0SO1RjwZHcrjV3SukrLhUvnqHnVzznA7B2DuVyKUVpFeUm+yuqapsWWt6z+zKSkbRjs4j0kz96Q+AWnZvtLoka0NGAFk0bPUMElM6Zs7PVTIJnOAYI87xPIADj4IHHy4P0J6PNmqq2W6Osve665SNzu4HsWnlpxd2n4KlbZ5PSJacaFcvJdjoOCiLIIAQAgBACA5bnQUtzopaOvgZPTyjD43tyD++1ZTa5RhrZhG3Xo3rtnnyVlsbJWWvOSQMyQdzu0fm8+1W67lLh9kE69coRAcjI1UxCBQyeOaHDBRob0QlrojpwWvRummSMkDxjmspmrTR3RPa2AOccN7VJ9GnOzknq3SdWDQczzK0cv0SKCXZFHFu6nisJByJcLJqCGDpt1BV3OrZR2+mkqamQ9WOMZPiewd5WJNRW2ZSb6Nz9Hno6g2dDK+6COoupGWnGWU+nBva783l307LXLroswgkP7RhREh6gBACAEAIAQAgPCAeIQGfbXeiu13gyVVpLbbWOOSGMzFIe9vI948ipoXOPZHKtSMh2h2Svuz0jhc6CQQjhURDfiP/cOHxwrMbIyXBA4SRR5zry5Lc0BDJE+Lm3QrDRsmee1kAa89VqxpsztIka0N0AW2jR8n0smD6ijlmlbFDG+SR2jWRtLnH4BYel2Z0x+2Y9FN6u25Nds2ulOpa9odM4dzfw/HyUE74rhEsam+zY9mtmbTs1Ser2qlbGSB0kp1kkPa53P6KtKTl2TqKXRc4C1MggBACAEAIAQAgBACAEB8vaHt3XAFp4gjQoBTvfo62XunSSOtrKWU5cZKM9ESe8DQ/EKSNs19msoJoxDbax02ztwFPRyzysJ4zFpI49gCtRsbIZQRQkAAKXRG0efiATQ0D9JAFiXBlRRrWw/o4sV0o2VlwdWTOcAejMoa0f6QD81WndJdEsYRNNs2z9nsjN21W2mpsjV8cY33eLuJ+JVdzlLslSS6LVYMggBACAEAIAQH/9k='),
                    ),
                    // text field beside circle avatar
                   SizedBox(width: 30.0,
                   ),
                    Container(
                      width: 350.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "What's on your mind?",
                          ),
                        ),
                      ),
                  
                    ),
                    
                    IconButton(
                
                      icon: const Icon(Icons.photo_camera, size: 30.0, color: Colors.green,),
                      onPressed: () =>{},
                    ),
                
                  ],
                  ),
                 
                  Row(
                    children:[
                      Column(
                        children:[

                          
                        ]
                      )
                    ]
                  ),
              ],
              
              )
     
    ],
      //story section
            ),

Divider(color: Colors.grey, height: 20.0, thickness: 1.5,),
                 SizedBox(height: 10.0,),

            Column(
              
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                    

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
               child: Row(

                  // scrollable row
                  

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // rectangle container with image from network
              
                Stack(
  children: [
    Container(
      width: 100,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // Top Half - Image
          Container(
            width: 100,
            height: 100, // half height
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2t8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Bottom Half - White
          Container(
            width: 100,
            height: 100,
            child: Center( 
    child: IconButton( 
          icon: 
      Icon(Icons.add_circle, size: 40.0, color: Colors.blue,), 
      onPressed: () =>{}, ), ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
          ),
          
        ],

        
      ),
    ),

    // Center add icon
   

    // Bottom create story text
    Positioned(
      bottom: 8,
      left: 0,
      right: 0,
      child: Text(
        "Create Story",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black, // Better visibility on white
          fontWeight: FontWeight.bold,
        ),
      ),
      

    ),
  ],
),

 SizedBox(width: 10.0,),
                      for(int i = 0; i <8; i++)
                    Padding(padding:  const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
    onTap: () {
      print("Story clicked!");
      //  navigation or action here
    },
                    child:
                 Stack(

                  
                  
                  children: [
                    Container(
                              //add add-story icon at center of the container


                      width: 100.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2t8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                          fit: BoxFit.cover,
                        ),
                      ),
                          // c
                             

                    ),

                     // Bottom "username" Text
    Positioned(
      bottom: 8,
      left: 0,
      right: 0,
      child: Text(
        "Gdsm",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 4,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    ),

             
    
                  ],
                ),
                    
                         
                    
               ),)],
            ),
            ),



              ]     
    ),
    Divider(color: Colors.grey, height: 20.0, thickness: 1.5,),
                 SizedBox(height: 10.0,),
              // ─────────── Facebook Post ───────────
            


                    

              facebookPost(
                profileImage: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2t8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                username: 'Gdsm',
                time: '2 hrs ago',
                postText: 'Enjoying the sunny weather at the beach!',
                postImage: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
              ),

                  ]
                ),
              ),
              ]
              
                
              


    ),
    ),
    );

     
   }
 }