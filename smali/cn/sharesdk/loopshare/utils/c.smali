.class public Lcn/sharesdk/loopshare/utils/c;
.super Ljava/lang/Object;
.source "IntentRecorder.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Intent;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/c;->a:Landroid/app/Activity;

    .line 15
    iput-object p2, p0, Lcn/sharesdk/loopshare/utils/c;->b:Landroid/content/Intent;

    .line 16
    iput-boolean p3, p0, Lcn/sharesdk/loopshare/utils/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public b()Landroid/content/Intent;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/c;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcn/sharesdk/loopshare/utils/c;->c:Z

    return v0
.end method
