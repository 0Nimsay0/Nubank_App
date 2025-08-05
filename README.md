# Nubank\_App

Aplicativo Flutter inspirado no design da interface do Nubank, para fins educativos. Este projeto serve como base para aprendizado e prototipação de funcionalidades mobile.

---

## Estrutura do Repositório

```text
/lib
 ├── main.dart
 ├── pages/           # Telas da aplicação
 ├── controllers/     # Controllers com GetX
 ├── widgets/         # Componentes reutilizáveis
/assets
 ├── images/          # Imagens estáticas
 ├── icons/           # Ícones personalizados
/pubspec.yaml         # Dependências e configuração Flutter
```

---

## Funcionalidades Principais

* Layout inspirado no app Nubank (conta, cartões, cores, tipografia)
* Navegação estruturada entre páginas
* Gerenciamento de estado com GetX
* Uso de `RichText`, `TextSpan`, e `IconButton` com lógica de visibilidade customizada

---

##  Tecnologias Utilizadas

| Tecnologia                | Finalidade                            |
| ------------------------- | ------------------------------------- |
| Flutter                   | Desenvolvimento mobile cross-platform |
| Dart                      | Linguagem de programação              |
| GetX                      | Gerenciamento de estado e rota        |
| Material Icons / MdiIcons | Ícones no estilo Nubank               |

## Exemplos de Código

**IconButton com GetX – mostrar/ocultar visibilidade**

```dart
GetBuilder<ControllerHomePage>(
  builder: (controller) {
    return IconButton(
      onPressed: controller.toggleEyesValue,
      icon: Icon(
        controller.eyesValue
            ? MdiIcons.eyeOutline
            : MdiIcons.eyeOff,
        color: Colors.white,
      ),
    );
  },
);
```

**RichText com `TextSpan` nomeado**

```dart
RichText(
  text: TextSpan(
    children: [
      TextSpan(text: 'Seu '),
      TextSpan(text: 'Informe de Rendimentos'),
    ],
    style: TextStyle(color: Colors.black),
  ),
),

---

## Links Relacionados

* Documentação Flutter: [https://flutter.dev](https://flutter.dev)
* GetX: [https://pub.dev/packages/get](https://pub.dev/packages/get)
* Guia de estilo Dart/Flutter: [https://dart.dev/guides](https://dart.dev/guides)
