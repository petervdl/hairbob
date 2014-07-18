.class Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationViewHolder"
.end annotation


# instance fields
.field loopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

.field position:I

.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Landroid/view/View;)V
    .registers 3
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 563
    return-void
.end method
