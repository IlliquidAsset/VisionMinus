.class public final synthetic Lcom/powervision/base/utils/-$$Lambda$DialogUtils$lJSFsGcu6hHOWRavbGhsPkhl4Ms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$lJSFsGcu6hHOWRavbGhsPkhl4Ms;->f$0:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/base/utils/-$$Lambda$DialogUtils$lJSFsGcu6hHOWRavbGhsPkhl4Ms;->f$0:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0, p1, p2}, Lcom/powervision/base/utils/DialogUtils;->lambda$verticalDialog$1(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method
