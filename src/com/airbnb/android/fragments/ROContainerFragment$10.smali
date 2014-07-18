.class Lcom/airbnb/android/fragments/ROContainerFragment$10;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->showRespondButtonForBookIt(Lcom/airbnb/android/models/Listing;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1144
    iget-object v7, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->val$listing:Lcom/airbnb/android/models/Listing;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2000(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2000(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckoutDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$10;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mMessageThread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v6}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2000(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/MessageThread;->getInquiryNumGuests()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/activities/BookingDetailsActivity;->intentForListingWithDates(Landroid/content/Context;Lcom/airbnb/android/models/Listing;JJI)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2bd

    invoke-virtual {v7, v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1146
    return-void
.end method
