.class public Lcom/airbnb/android/fragments/InstantBookFtueDialog;
.super Lcom/airbnb/android/fragments/ViewPagerFtueDialog;
.source "InstantBookFtueDialog.java"


# static fields
.field private static final CONFIRM_REQUEST_CODE:Ljava/lang/String; = "req_code_confirm"

.field private static final NUM_FTUE_PAGES:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/InstantBookFtueDialog;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InstantBookFtueDialog;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->clickConfirm(I)V

    return-void
.end method

.method private clickConfirm(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .prologue
    .line 38
    iget v0, p0, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->mCurrPage:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookFtuePressTry(IZ)V

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;I)Lcom/airbnb/android/fragments/InstantBookFtueDialog;
    .registers 5
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "requestCode"    # I

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "req_code_confirm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    new-instance v1, Lcom/airbnb/android/fragments/InstantBookFtueDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;-><init>()V

    .line 25
    .local v1, "f":Lcom/airbnb/android/fragments/InstantBookFtueDialog;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->setArguments(Landroid/os/Bundle;)V

    .line 26
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public forStep(I)Landroid/support/v4/app/Fragment;
    .registers 6
    .param p1, "step"    # I

    .prologue
    const/4 v3, -0x1

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 45
    .local v0, "fragMgr":Landroid/support/v4/app/FragmentManager;
    packed-switch p1, :pswitch_data_2c

    .line 56
    const/4 v1, 0x0

    :goto_9
    return-object v1

    .line 47
    :pswitch_a
    const v1, 0x7f0e01f4

    const v2, 0x7f0e01f3

    invoke-static {v0, v3, v1, v2}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;III)Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    move-result-object v1

    goto :goto_9

    .line 50
    :pswitch_15
    const v1, 0x7f0e0204

    const v2, 0x7f0e01fa

    invoke-static {v0, v3, v1, v2}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;III)Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    move-result-object v1

    goto :goto_9

    .line 53
    :pswitch_20
    const v1, 0x7f0e0200

    const v2, 0x7f0e01f2

    invoke-static {v0, v3, v1, v2}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;III)Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    move-result-object v1

    goto :goto_9

    .line 45
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_15
        :pswitch_20
    .end packed-switch
.end method

.method public getNumPages()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x3

    return v0
.end method

.method public getStickyButtonClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/airbnb/android/fragments/InstantBookFtueDialog$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/InstantBookFtueDialog$1;-><init>(Lcom/airbnb/android/fragments/InstantBookFtueDialog;)V

    return-object v0
.end method

.method public getStickyButtonTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    const v1, 0x7f0e01ef

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookFtueImpressions(Z)V

    .line 34
    return-object v0
.end method
