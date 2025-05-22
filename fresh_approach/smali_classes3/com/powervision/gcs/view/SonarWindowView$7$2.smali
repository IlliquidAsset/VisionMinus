.class Lcom/powervision/gcs/view/SonarWindowView$7$2;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarWindowView$7;->onSonarDataSotp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/SonarWindowView$7;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView$7;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$7$2;->this$1:Lcom/powervision/gcs/view/SonarWindowView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$7$2;->this$1:Lcom/powervision/gcs/view/SonarWindowView$7;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView$7;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView;->stopSonarData()V

    return-void
.end method
