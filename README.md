# QNN Beamer Template

A professional LaTeX Beamer presentation template designed for the Quantum Nanostructures and Nanofabrication Group at MIT. Features custom slide layouts, modern typography with Helvetica Neue, and branded styling.

## 🎯 Features

- **Custom Slide Layouts**: Multiple pre-designed slide types for different content needs
- **Professional Typography**: Helvetica Neue font family with proper weight mapping
- **Branded Design**: QNN, RLE, and MIT logos integrated throughout
- **16:9 Aspect Ratio**: Modern widescreen format optimized for presentations
- **Modular Structure**: Organized slide files for easy maintenance and collaboration

## 📋 Slide Types

The template includes several custom slide environments:

| Environment | Description | Usage |
|-------------|-------------|-------|
| `SlideTitleSlide` | Title slide with background image and logos | Opening slide |
| `SlideTitleContent` | Standard slide with title and content area | Main content slides |
| `SlideTitleOnly` | Slide with only a title at the top | Minimal content slides |
| `SlideTitleCentered` | Centered title for section breaks | Transition slides |
| `SlideImageOnly` | Full-screen image slide | Image showcases |
| `SlideTextImage` | Split layout with text and image | Content with visuals |

## 🚀 Quick Start

### Prerequisites

- LaTeX distribution with LuaLaTeX support
- Custom fonts (included in `fonts/` directory)
- Required packages: `graphicx`, `xcolor`, `tikz`, `fontspec`, `textpos`

### Building the Presentation

1. **Clone or download** this template
2. **Customize content** in `main.tex` and individual slide files
3. **Compile** using one of these methods:

   **Local compilation** with the provided script:

   ```bash
   ./compile.sh
   ```

   **Manual compilation** with LuaLaTeX:

   ```bash
   lualatex -interaction=nonstopmode -output-directory=out main.tex
   ```

   **Overleaf users**: Make sure to set the compiler to **LuaLaTeX** in your project settings (Menu → Settings → Compiler → LuaLaTeX). This is required for the custom Helvetica Neue fonts to render correctly.

The compiled PDF will be generated in the `out/` directory (or root directory in Overleaf).

## 📁 Project Structure

```text
├── main.tex              # Main presentation file
├── compile.sh            # Build script
├── references.bib        # Bibliography file
├── slides/               # Individual slide files
│   ├── 01_title.tex     # Title slide
│   ├── 02_overview.tex  # Overview/agenda slide
│   ├── 03_title_only.tex
│   ├── 04_section_break.tex
│   └── 05_image_only.tex
├── style/
│   └── layouts.sty      # Custom slide layouts and styling
├── figures/             # Images and logos
│   ├── qnn_logo.png
│   ├── rle_logo.png
│   ├── mit_logo.png
│   └── example_image.png
└── fonts/               # Helvetica Neue font family
    ├── HelveticaNeueRoman.otf
    ├── HelveticaNeueBold.otf
    └── ...
```

## ✏️ Customization

### Adding New Slides

1. Create a new `.tex` file in the `slides/` directory
2. Use one of the available slide environments
3. Include the file in `main.tex`:

   ```latex
   \input{slides/your_new_slide.tex}
   ```

### Example Slide Usage

```latex
% Content slide
\begin{SlideTitleContent}{Your Slide Title}
    \begin{itemize}
        \item First point
        \item Second point
        \item Third point
    \end{itemize}
\end{SlideTitleContent}

% Section break
\begin{SlideTitleCentered}{New Section}
\end{SlideTitleCentered}

% Image showcase
\begin{SlideImageOnly}
    \includegraphics[width=\textwidth]{figures/your_image.png}
\end{SlideImageOnly}
```

### Updating Metadata

Edit the presentation metadata in `main.tex`:

```latex
\title{Your Presentation Title}
\subtitle{Your Subtitle}
\author{Your Name}
\affil{Your Affiliation}
\date{Date}
```

### Custom Colors

The template defines several colors in `style/layouts.sty`:

- `QNNRed`: Primary brand color
- `LightGray`: Footer background
- `DarkBG`: Dark theme backgrounds
- `DarkText`: Dark theme text

## 🔧 Requirements

- **LuaLaTeX**: Required for custom font support
- **Font files**: Helvetica Neue family (included)
- **Images**: Logo files in PNG format

## 📝 License

This template is provided under the MIT License. See `LICENSE` file for details.

## 🤝 Contributing

Feel free to submit issues, suggestions, or improvements to make this template better for the QNN group and the broader community.

---

**Quantum Nanostructures and Nanofabrication Group**  
Research Laboratory of Electronics  
Massachusetts Institute of Technology
