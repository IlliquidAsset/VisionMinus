.class public Lcom/powervision/home/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initConnect()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget p1, Lcom/powervision/home/R$layout;->home_activity_main:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/MainActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/powervision/home/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$id;->home_main_container:I

    invoke-static {}, Lcom/powervision/home/ui/fragment/HomeFragment;->newInstance()Lcom/powervision/home/ui/fragment/HomeFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 19
    invoke-direct {p0}, Lcom/powervision/home/MainActivity;->initConnect()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
