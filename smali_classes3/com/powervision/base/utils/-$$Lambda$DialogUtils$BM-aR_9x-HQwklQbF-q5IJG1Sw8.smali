.class public final synthetic Lcom/powervision/base/utils/-$$Lambda$DialogUtils$BM-aR_9x-HQwklQbF-q5IJG1Sw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/base/utils/DialogUtils$OnClickListener;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$BM-aR_9x-HQwklQbF-q5IJG1Sw8;->f$0:Lcom/powervision/base/utils/DialogUtils$OnClickListener;

    iput-object p2, p0, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$BM-aR_9x-HQwklQbF-q5IJG1Sw8;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$BM-aR_9x-HQwklQbF-q5IJG1Sw8;->f$0:Lcom/powervision/base/utils/DialogUtils$OnClickListener;

    iget-object v1, p0, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$BM-aR_9x-HQwklQbF-q5IJG1Sw8;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0, v1, p1, p2}, Lcom/powervision/base/utils/DialogUtils;->lambda$returnCustomDialog$7(Lcom/powervision/base/utils/DialogUtils$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method
