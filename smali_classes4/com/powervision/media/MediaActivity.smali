.class public Lcom/powervision/media/MediaActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MediaActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lcom/powervision/media/R$layout;->media_activity:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/MediaActivity;->setContentView(I)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 24
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 25
    invoke-virtual {p0}, Lcom/powervision/media/MediaActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$id;->media_main_container:I

    invoke-static {}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->newInstance()Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 26
    sget p1, Lcom/powervision/media/R$id;->bt_add:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/MediaActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/MediaActivity$1;-><init>(Lcom/powervision/media/MediaActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
