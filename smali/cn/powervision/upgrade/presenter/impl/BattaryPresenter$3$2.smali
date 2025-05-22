.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$2;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$2;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$2;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    iget-object p1, p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$100(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/16 p1, 0xa

    .line 189
    sput p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    return-void
.end method
