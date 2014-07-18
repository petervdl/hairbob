.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BrowsableListingsMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    const/4 v2, 0x1

    # setter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$002(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Z)Z

    .line 89
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$100(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    .line 90
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$200(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/views/LoopingViewPager;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 91
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->updateMapMarkerListings()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$300(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    .line 93
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$200(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/views/LoopingViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoopingViewPager;->getAdapter()Lcom/airbnb/android/adapters/LoopingPagerAdapter;

    move-result-object v0

    .line 94
    .local v0, "adapter":Lcom/airbnb/android/adapters/LoopingPagerAdapter;
    if-eqz v0, :cond_27

    .line 95
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->notifyDataSetChanged()V

    .line 98
    .end local v0    # "adapter":Lcom/airbnb/android/adapters/LoopingPagerAdapter;
    :cond_27
    return-void
.end method
