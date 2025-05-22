.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$2;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 367
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$2;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 370
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$2;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;

    iget-object p1, p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$202(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
