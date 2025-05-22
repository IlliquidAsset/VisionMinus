.class Lcom/powervision/gcs/view/SonarParamQuickSetView$1;
.super Ljava/lang/Object;
.source "SonarParamQuickSetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarParamQuickSetView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView$1;->this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView$1;->this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/SonarParamQuickSetView;->dismiss()V

    return-void
.end method
