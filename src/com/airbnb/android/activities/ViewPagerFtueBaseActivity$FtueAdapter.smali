.class Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ViewPagerFtueBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtueAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    .line 301
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 302
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getNumPages()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->forStep(I)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    return-object v0
.end method
