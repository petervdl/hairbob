.class final Lcom/airbnb/android/utils/MiscUtils$2;
.super Ljava/lang/Object;
.source "MiscUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/MiscUtils;->loadStaticMapIfNeeded(Lcom/airbnb/android/views/ClickableViewPager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 2

    .prologue
    .line 595
    iput-object p1, p0, Lcom/airbnb/android/utils/MiscUtils$2;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/airbnb/android/utils/MiscUtils$2;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->setupStaticMapView()V

    .line 599
    return-void
.end method
