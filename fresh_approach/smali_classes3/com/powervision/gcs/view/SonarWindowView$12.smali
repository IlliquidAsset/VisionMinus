.class Lcom/powervision/gcs/view/SonarWindowView$12;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarWindowView;->takeShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarWindowView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView;)V
    .locals 0

    .line 1257
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$12;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1260
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$12;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->recodingPath:Ljava/lang/String;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$12;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->recodingPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1262
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$12;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/powervision/gcs/view/SonarWindowView;->recodingPath:Ljava/lang/String;

    .line 1264
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$12;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v2, v2, Lcom/powervision/gcs/view/SonarWindowView;->recodingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1267
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1268
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$12;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarTextureView:Lcom/powervision/gcs/Texture/SonarTextureView;

    const/16 v2, 0x1f4

    const/16 v3, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/powervision/gcs/Texture/SonarTextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1269
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1270
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1271
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
