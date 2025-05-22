.class Lcom/powervision/home/ui/adapter/CommonPresenter$2;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->init_Fragemnt(Landroidx/fragment/app/Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$2;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$2;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method
