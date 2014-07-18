.class Lcom/airbnb/android/fragments/YourTripsFragment$2;
.super Ljava/lang/Object;
.source "YourTripsFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/YourTripsFragment;->setupTabs()V
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
    .line 135
    iput-object p1, p0, Lcom/airbnb/android/fragments/YourTripsFragment$2;->this$0:Lcom/airbnb/android/fragments/YourTripsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment$2;->this$0:Lcom/airbnb/android/fragments/YourTripsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/YourTripsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 139
    return-void
.end method
