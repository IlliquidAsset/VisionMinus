.class public final synthetic Lcom/powervision/aircraft/ui/fragment/-$$Lambda$IMUCalibrationFragment$VPJVM9pH1Xta6DmNQZUL4Yt9oOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$IMUCalibrationFragment$VPJVM9pH1Xta6DmNQZUL4Yt9oOc;->f$0:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$IMUCalibrationFragment$VPJVM9pH1Xta6DmNQZUL4Yt9oOc;->f$0:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->lambda$setListener$1$IMUCalibrationFragment(Ljava/lang/Boolean;)V

    return-void
.end method
