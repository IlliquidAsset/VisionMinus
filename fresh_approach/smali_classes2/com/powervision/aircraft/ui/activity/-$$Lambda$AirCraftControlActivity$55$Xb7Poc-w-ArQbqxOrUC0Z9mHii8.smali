.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Xb7Poc-w-ArQbqxOrUC0Z9mHii8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Xb7Poc-w-ArQbqxOrUC0Z9mHii8;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Xb7Poc-w-ArQbqxOrUC0Z9mHii8;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Xb7Poc-w-ArQbqxOrUC0Z9mHii8;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Xb7Poc-w-ArQbqxOrUC0Z9mHii8;->f$1:Landroidx/appcompat/app/AlertDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->lambda$run$1$AirCraftControlActivity$55(Landroidx/appcompat/app/AlertDialog;Ljava/lang/Integer;)V

    return-void
.end method
