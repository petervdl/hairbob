.class Lcom/airbnb/android/views/StaticMapView$1;
.super Ljava/lang/Object;
.source "StaticMapView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/StaticMapView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/StaticMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/StaticMapView;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/airbnb/android/views/StaticMapView$1;->this$0:Lcom/airbnb/android/views/StaticMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$1;->this$0:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticMapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/airbnb/android/utils/MiscUtils;->apiRemoveGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$1;->this$0:Lcom/airbnb/android/views/StaticMapView;

    # getter for: Lcom/airbnb/android/views/StaticMapView;->mFetchImage:Z
    invoke-static {v0}, Lcom/airbnb/android/views/StaticMapView;->access$000(Lcom/airbnb/android/views/StaticMapView;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$1;->this$0:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticMapView;->freeze()V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$1;->this$0:Lcom/airbnb/android/views/StaticMapView;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/views/StaticMapView;->mFetchImage:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/views/StaticMapView;->access$002(Lcom/airbnb/android/views/StaticMapView;Z)Z

    .line 143
    :cond_1c
    return-void
.end method
