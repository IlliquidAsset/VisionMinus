.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$updateMode$2$AirCraftControlActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
