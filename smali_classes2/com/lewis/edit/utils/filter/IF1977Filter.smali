.class public Lcom/lewis/edit/utils/filter/IF1977Filter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IF1977Filter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     texel = vec3(\n                  texture2D(inputImageTexture2, vec2(texel.r, .16666)).r,\n                  texture2D(inputImageTexture2, vec2(texel.g, .5)).g,\n                  texture2D(inputImageTexture2, vec2(texel.b, .83333)).b);\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     \n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     texel = vec3(\n                  texture2D(inputImageTexture2, vec2(texel.r, .16666)).r,\n                  texture2D(inputImageTexture2, vec2(texel.g, .5)).g,\n                  texture2D(inputImageTexture2, vec2(texel.b, .83333)).b);\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IF1977Filter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 37
    sget v0, Lcom/lewis/edit/R$drawable;->nmap:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IF1977Filter;->addInputTexture(I)V

    .line 38
    sget v0, Lcom/lewis/edit/R$drawable;->nblowout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IF1977Filter;->addInputTexture(I)V

    return-void
.end method
