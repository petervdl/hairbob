.class Lcom/airbnb/android/views/LoopingViewPager$1$1;
.super Ljava/lang/Object;
.source "LoopingViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/LoopingViewPager$1;->hideViewPagerAndScroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/views/LoopingViewPager$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/LoopingViewPager$1;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/airbnb/android/views/LoopingViewPager$1$1;->this$1:Lcom/airbnb/android/views/LoopingViewPager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1$1;->this$1:Lcom/airbnb/android/views/LoopingViewPager$1;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager;->mCurtainImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1$1;->this$1:Lcom/airbnb/android/views/LoopingViewPager$1;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager;->mCurtainImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :cond_13
    return-void
.end method
