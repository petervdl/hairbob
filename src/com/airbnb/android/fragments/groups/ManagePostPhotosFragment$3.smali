.class Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$3;
.super Ljava/lang/Object;
.source "ManagePostPhotosFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 186
    const-string/jumbo v0, "tap_select_photo"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPostPhotos(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getPhotoFromGallery()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->access$400(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 189
    return-void
.end method
