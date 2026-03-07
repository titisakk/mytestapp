import 'package:flutter/material.dart';

class PostGrid extends StatelessWidget {
  const PostGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      padding: EdgeInsets.all(2),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 1,

      children: [
        Image.network(
          'https://miro.medium.com/v2/resize:fit:1200/1*38NvKYy_vk7OFI__K3MseQ.jpeg',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuoy_cH6LpkUSzvI6iaQdOvPziunbuNE5xaPgXPUxJDA&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXuAhK0FboVzzrpe85sifv7Cbqry6Ly70Sw&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuoy_cH6LpkUSzvI6iaQdOvPziunbuNE5xaPgXPUxJDA&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXuAhK0FboVzzrpe85sifv7Cbqry6Ly70Sw&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://miro.medium.com/v2/resize:fit:1200/1*38NvKYy_vk7OFI__K3MseQ.jpeg',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXuAhK0FboVzzrpe85sifv7Cbqry6Ly70Sw&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://miro.medium.com/v2/resize:fit:1200/1*38NvKYy_vk7OFI__K3MseQ.jpeg',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuoy_cH6LpkUSzvI6iaQdOvPziunbuNE5xaPgXPUxJDA&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXuAhK0FboVzzrpe85sifv7Cbqry6Ly70Sw&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://miro.medium.com/v2/resize:fit:1200/1*38NvKYy_vk7OFI__K3MseQ.jpeg',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuoy_cH6LpkUSzvI6iaQdOvPziunbuNE5xaPgXPUxJDA&s',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}
