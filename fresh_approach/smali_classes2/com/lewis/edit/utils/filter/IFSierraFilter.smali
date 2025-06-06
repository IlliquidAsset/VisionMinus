.class public Lcom/lewis/edit/utils/filter/IFSierraFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFSierraFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //blowout;\n uniform sampler2D inputImageTexture3; //overlay;\n uniform sampler2D inputImageTexture4; //map\n \n void main()\n {\n     \n     vec4 texel = texture2D(inputImageTexture, textureCoordinate);\n     vec3 bbTexel = texture2D(inputImageTexture2, textureCoordinate).rgb;\n     \n     texel.r = texture2D(inputImageTexture3, vec2(bbTexel.r, texel.r)).r;\n     texel.g = texture2D(inputImageTexture3, vec2(bbTexel.g, texel.g)).g;\n     texel.b = texture2D(inputImageTexture3, vec2(bbTexel.b, texel.b)).b;\n     \n     vec4 mapped;\n     mapped.r = texture2D(inputImageTexture4, vec2(texel.r, .16666)).r;\n     mapped.g = texture2D(inputImageTexture4, vec2(texel.g, .5)).g;\n     mapped.b = texture2D(inputImageTexture4, vec2(texel.b, .83333)).b;\n     mapped.a = 1.0;\n     \n     gl_FragColor = mapped;\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //blowout;\n uniform sampler2D inputImageTexture3; //overlay;\n uniform sampler2D inputImageTexture4; //map\n \n void main()\n {\n     \n     vec4 texel = texture2D(inputImageTexture, textureCoordinate);\n     vec3 bbTexel = texture2D(inputImageTexture2, textureCoordinate).rgb;\n     \n     texel.r = texture2D(inputImageTexture3, vec2(bbTexel.r, texel.r)).r;\n     texel.g = texture2D(inputImageTexture3, vec2(bbTexel.g, texel.g)).g;\n     texel.b = texture2D(inputImageTexture3, vec2(bbTexel.b, texel.b)).b;\n     \n     vec4 mapped;\n     mapped.r = texture2D(inputImageTexture4, vec2(texel.r, .16666)).r;\n     mapped.g = texture2D(inputImageTexture4, vec2(texel.g, .5)).g;\n     mapped.b = texture2D(inputImageTexture4, vec2(texel.b, .83333)).b;\n     mapped.a = 1.0;\n     \n     gl_FragColor = mapped;\n }\n"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFSierraFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 45
    sget v0, Lcom/lewis/edit/R$drawable;->sierra_vignette:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSierraFilter;->addInputTexture(I)V

    .line 46
    sget v0, Lcom/lewis/edit/R$drawable;->overlay_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSierraFilter;->addInputTexture(I)V

    .line 47
    sget v0, Lcom/lewis/edit/R$drawable;->sierra_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFSierraFilter;->addInputTexture(I)V

    return-void
.end method
