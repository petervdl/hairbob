.class Lcom/airbnb/android/fragments/PlayVideoFragment$2;
.super Ljava/lang/Object;
.source "PlayVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PlayVideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PlayVideoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PlayVideoFragment;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/fragments/PlayVideoFragment$2;->this$0:Lcom/airbnb/android/fragments/PlayVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/PlayVideoFragment$2;->this$0:Lcom/airbnb/android/fragments/PlayVideoFragment;

    # getter for: Lcom/airbnb/android/fragments/PlayVideoFragment;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PlayVideoFragment;->access$000(Lcom/airbnb/android/fragments/PlayVideoFragment;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 62
    return-void
.end method
