.class public final synthetic Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$tq6JyuhKaqHx__r_-myHY4OEhXQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$tq6JyuhKaqHx__r_-myHY4OEhXQ;->f$0:Lcom/powervision/home/ui/activity/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$tq6JyuhKaqHx__r_-myHY4OEhXQ;->f$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/powervision/home/ui/activity/HomeActivity;->lambda$initView$0$HomeActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
