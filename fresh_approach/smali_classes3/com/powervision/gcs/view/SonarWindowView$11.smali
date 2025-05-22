.class Lcom/powervision/gcs/view/SonarWindowView$11;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field needFree:Z

.field final synthetic this$0:Lcom/powervision/gcs/view/SonarWindowView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1090
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->needFree:Z

    return-void
.end method


# virtual methods
.method public doWork([B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1085
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->setImagerData([B)V

    :cond_0
    return-void
.end method

.method public setNeedFreeMemory(Z)V
    .locals 0

    .line 1118
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->needFree:Z

    return-void
.end method

.method public threadIsOver()V
    .locals 3

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->ism:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->ism:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1102
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1104
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->needFree:Z

    if-eqz v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->clearMemory()V

    .line 1107
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->clearTheFish()V

    .line 1108
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigBytes([B)V

    .line 1109
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigNewDatas(I)V

    .line 1110
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->setDemoSateListener(Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;)V

    .line 1111
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$11;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iput-object v1, v0, Lcom/powervision/gcs/view/SonarWindowView;->demoThread:Lcom/powervision/gcs/view/SonarWindowView$DemoThread;

    :cond_2
    return-void
.end method
