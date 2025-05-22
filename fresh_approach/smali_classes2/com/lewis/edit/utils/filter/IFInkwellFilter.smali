.class public Lcom/lewis/edit/utils/filter/IFInkwellFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFInkwellFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     texel = vec3(dot(vec3(0.3, 0.6, 0.1), texel));\n     texel = vec3(texture2D(inputImageTexture2, vec2(texel.r, .16666)).r);\n     gl_FragColor = vec4(texel, 1.0);\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     texel = vec3(dot(vec3(0.3, 0.6, 0.1), texel));\n     texel = vec3(texture2D(inputImageTexture2, vec2(texel.r, .16666)).r);\n     gl_FragColor = vec4(texel, 1.0);\n }\n"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFInkwellFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 32
    sget v0, Lcom/lewis/edit/R$drawable;->inkwell_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFInkwellFilter;->addInputTexture(I)V

    return-void
.end method
