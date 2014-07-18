.class Lcom/airbnb/android/fragments/YourTripsFragment$1;
.super Ljava/lang/Object;
.source "YourTripsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/YourTripsFragment;->setupViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/YourTripsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/YourTripsFragment;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/airbnb/android/fragments/YourTripsFragment$1;->this$0:Lcom/airbnb/android/fragments/YourTripsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 127
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 117
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment$1;->this$0:Lcom/airbnb/android/fragments/YourTripsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/YourTripsFragment;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 122
    return-void
.end method
