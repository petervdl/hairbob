.class Lcom/airbnb/android/fragments/groups/NewContentFragment$6;
.super Ljava/lang/Object;
.source "NewContentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/NewContentFragment;->getPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 2

    .prologue
    .line 323
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 326
    const-string/jumbo v0, "tap_take_photo"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$100(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPost(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 327
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/NewContentFragment;->getPhotoFromCamera()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$800(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    .line 328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 329
    return-void
.end method
