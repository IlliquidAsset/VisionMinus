.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$4;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$4;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 389
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$4;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;

    iget-object p1, p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$100(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/16 p1, 0xa

    .line 390
    sput p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    return-void
.end method
