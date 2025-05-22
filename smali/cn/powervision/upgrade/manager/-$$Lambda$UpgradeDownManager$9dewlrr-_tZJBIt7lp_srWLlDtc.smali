.class public final synthetic Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$9dewlrr-_tZJBIt7lp_srWLlDtc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/powervision/upgrade/manager/UpgradeDownManager;


# direct methods
.method public synthetic constructor <init>(Lcn/powervision/upgrade/manager/UpgradeDownManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$9dewlrr-_tZJBIt7lp_srWLlDtc;->f$0:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$9dewlrr-_tZJBIt7lp_srWLlDtc;->f$0:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcn/powervision/upgrade/manager/UpgradeDownManager;->lambda$startDown$1$UpgradeDownManager(Ljava/lang/Throwable;)V

    return-void
.end method
