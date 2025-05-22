.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/widgets/MediaTipDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/widgets/MediaTipDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;->f$0:Lcom/powervision/media/widgets/MediaTipDialog;

    return-void
.end method


# virtual methods
.method public final confirm()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;->f$0:Lcom/powervision/media/widgets/MediaTipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
