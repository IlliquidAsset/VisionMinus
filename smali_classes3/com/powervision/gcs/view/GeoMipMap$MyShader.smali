.class Lcom/powervision/gcs/view/GeoMipMap$MyShader;
.super Ljava/lang/Object;
.source "GeoMipMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/GeoMipMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyShader"
.end annotation


# instance fields
.field aColor:I

.field aMVPMatrix:I

.field aVertex:I

.field fragmentShader:Ljava/lang/String;

.field program:I

.field final synthetic this$0:Lcom/powervision/gcs/view/GeoMipMap;

.field vertexShader:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/GeoMipMap;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->this$0:Lcom/powervision/gcs/view/GeoMipMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "precision highp float;\n        attribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\n        attribute vec4 aColor;//\u989c\u8272\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\n        uniform mat4 aMVPMatrix;//mvp\u77e9\u9635\n        varying vec4 color;//\n        void main(){\n            gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n            color = aColor;\n        }"

    .line 138
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->vertexShader:Ljava/lang/String;

    const-string p1, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\n        precision highp float;\n        varying vec4 color;//\n        void main(){\n            gl_FragColor = color;\n        }"

    .line 147
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->fragmentShader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 3

    const v0, 0x8b31

    .line 158
    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const v1, 0x8b30

    .line 159
    invoke-static {v1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->vertexShader:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 162
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 164
    iget-object v2, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->fragmentShader:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 165
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 167
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->program:I

    .line 168
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 169
    iget v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->program:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 170
    iget v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 173
    iget v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->program:I

    const-string v1, "aVertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aVertex:I

    .line 174
    iget v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->program:I

    const-string v1, "aMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aMVPMatrix:I

    .line 175
    iget v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->program:I

    const-string v1, "aColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/GeoMipMap$MyShader;->aColor:I

    return-void
.end method
