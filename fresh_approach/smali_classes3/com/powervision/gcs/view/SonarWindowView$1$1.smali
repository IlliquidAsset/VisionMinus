.class Lcom/powervision/gcs/view/SonarWindowView$1$1;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarWindowView$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/SonarWindowView$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView$1;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$1$1;->this$1:Lcom/powervision/gcs/view/SonarWindowView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 173
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$1$1;->this$1:Lcom/powervision/gcs/view/SonarWindowView$1;

    iget-object v1, v1, Lcom/powervision/gcs/view/SonarWindowView$1;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->setSonarDataListener(Lcom/powervision/gcs/callback/SonarImageDataListener;)V

    return-void
.end method
