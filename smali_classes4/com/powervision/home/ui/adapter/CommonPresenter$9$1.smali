.class Lcom/powervision/home/ui/adapter/CommonPresenter$9$1;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$9;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter$9;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$9$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 429
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
