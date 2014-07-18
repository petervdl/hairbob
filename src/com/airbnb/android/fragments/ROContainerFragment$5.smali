.class Lcom/airbnb/android/fragments/ROContainerFragment$5;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->updateDisplayImage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$isListingImage:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 607
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->val$isListingImage:Z

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->val$isListingImage:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->val$imageUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mSmallUserProfileUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1400(Lcom/airbnb/android/fragments/ROContainerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 632
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mSmallUserProfileUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1400(Lcom/airbnb/android/fragments/ROContainerFragment;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1502(Lcom/airbnb/android/fragments/ROContainerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mUserProfileUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1500(Lcom/airbnb/android/fragments/ROContainerFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->updateDisplayImage(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1600(Lcom/airbnb/android/fragments/ROContainerFragment;Ljava/lang/String;Z)V

    .line 635
    :cond_29
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 5
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 611
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 613
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->val$isListingImage:Z

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1100(Lcom/airbnb/android/fragments/ROContainerFragment;)Z

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 614
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 617
    :cond_1d
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->val$isListingImage:Z

    if-eqz v0, :cond_2a

    .line 618
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mSquareListingImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1202(Lcom/airbnb/android/fragments/ROContainerFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 622
    :cond_2a
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mCurrentTabIsGuestItinerary:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1100(Lcom/airbnb/android/fragments/ROContainerFragment;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 623
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$5;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->setStickyProfileImageAndScroll()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1300(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    .line 627
    :cond_37
    return-void
.end method
