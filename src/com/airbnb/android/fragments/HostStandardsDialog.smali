.class public Lcom/airbnb/android/fragments/HostStandardsDialog;
.super Lcom/airbnb/android/fragments/ViewPagerFtueDialog;
.source "HostStandardsDialog.java"


# static fields
.field private static final BODY:Ljava/lang/String; = "body_arg"

.field private static final NUM_FTUE_PAGES:I = 0x1

.field private static final TITLE:Ljava/lang/String; = "title_arg"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/HostStandardsDialog;
    .registers 6
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title_arg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v2, "body_arg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/airbnb/android/fragments/HostStandardsDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/HostStandardsDialog;-><init>()V

    .line 23
    .local v1, "f":Lcom/airbnb/android/fragments/HostStandardsDialog;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/HostStandardsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 24
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/airbnb/android/fragments/HostStandardsDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 25
    return-object v1
.end method


# virtual methods
.method public forStep(I)Landroid/support/v4/app/Fragment;
    .registers 7
    .param p1, "step"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostStandardsDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 31
    .local v0, "fragMgr":Landroid/support/v4/app/FragmentManager;
    packed-switch p1, :pswitch_data_28

    .line 36
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 33
    :pswitch_9
    const v1, 0x7f0200e2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostStandardsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title_arg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostStandardsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "body_arg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    move-result-object v1

    goto :goto_8

    .line 31
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public getNumPages()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getStickyButtonClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/airbnb/android/fragments/HostStandardsDialog$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/HostStandardsDialog$1;-><init>(Lcom/airbnb/android/fragments/HostStandardsDialog;)V

    return-object v0
.end method

.method public getStickyButtonTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    const v1, 0x7f0e0563

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
