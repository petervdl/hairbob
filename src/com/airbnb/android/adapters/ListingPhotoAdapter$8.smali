.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->flashHintIcons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$mapHint:Landroid/view/View;

.field final synthetic val$photoHint:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 550
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;->val$photoHint:Landroid/view/View;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;->val$mapHint:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;->val$photoHint:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 554
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;->val$mapHint:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 555
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$702(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 556
    return-void
.end method
