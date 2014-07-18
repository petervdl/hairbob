.class Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->setupViewPagerOnTouchListener(Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConsiderTap:Z

.field private mStartX:Ljava/lang/Float;

.field final synthetic this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 258
    iput-object p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_72

    .line 300
    :cond_9
    :goto_9
    return v10

    .line 267
    :pswitch_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mConsiderTap:Z

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mStartX:Ljava/lang/Float;

    goto :goto_9

    .line 272
    :pswitch_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long v3, v6, v8

    .line 273
    .local v3, "downDuration":J
    iget-boolean v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mConsiderTap:Z

    if-eqz v6, :cond_9

    const-wide/16 v6, 0xfa

    cmp-long v6, v3, v6

    if-gez v6, :cond_9

    .line 274
    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iget v0, v6, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->position:I

    .line 277
    .local v0, "clickedItemPosition":I
    iget-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->val$parent:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    .line 278
    .local v1, "currListView":Landroid/widget/ListView;
    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v6, v0, v11, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 279
    .local v5, "selectedView":Landroid/view/View;
    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v6, v0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 280
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_9

    .line 285
    .end local v0    # "clickedItemPosition":I
    .end local v1    # "currListView":Landroid/widget/ListView;
    .end local v3    # "downDuration":J
    .end local v5    # "selectedView":Landroid/view/View;
    :pswitch_47
    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mStartX:Ljava/lang/Float;

    if-eqz v6, :cond_9

    .line 286
    iget-object v6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # getter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mInvDensityDpi:F
    invoke-static {v6}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$400(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mStartX:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v2, v6, v7

    .line 287
    .local v2, "delta":F
    const/high16 v6, 0x3e800000

    cmpl-float v6, v2, v6

    if-lez v6, :cond_9

    .line 289
    iput-boolean v10, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mConsiderTap:Z

    .line 290
    iput-object v11, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mStartX:Ljava/lang/Float;

    goto :goto_9

    .line 296
    .end local v2    # "delta":F
    :pswitch_6d
    iput-boolean v10, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mConsiderTap:Z

    .line 297
    iput-object v11, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$4;->mStartX:Ljava/lang/Float;

    goto :goto_9

    .line 265
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_a
        :pswitch_18
        :pswitch_47
        :pswitch_6d
    .end packed-switch
.end method
