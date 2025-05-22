.class public Lcom/powervision/gcs/PVW4Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PVW4Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    sget p1, Lcom/powervision/gcs/R$layout;->activity_pvw4:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/PVW4Activity;->setContentView(I)V

    return-void
.end method
