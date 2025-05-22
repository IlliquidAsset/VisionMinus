.class Lcom/powervision/gcs/mina/HandlerEvent$1;
.super Ljava/lang/Object;
.source "HandlerEvent.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/mina/HandlerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/mina/HandlerEvent;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/mina/HandlerEvent;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent$1;->this$0:Lcom/powervision/gcs/mina/HandlerEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveContrlData([B)V
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent$1;->this$0:Lcom/powervision/gcs/mina/HandlerEvent;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/mina/HandlerEvent;->handle([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onReceiveImageData([B)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent$1;->this$0:Lcom/powervision/gcs/mina/HandlerEvent;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/mina/HandlerEvent;->handleImage([B)V

    return-void
.end method
