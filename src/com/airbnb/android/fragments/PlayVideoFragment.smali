.class public Lcom/airbnb/android/fragments/PlayVideoFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "PlayVideoFragment.java"


# static fields
.field private static final ARG_VIDEO_URL:Ljava/lang/String; = "video_url"


# instance fields
.field private mMediaController:Landroid/widget/MediaController;

.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PlayVideoFragment;)Landroid/widget/MediaController;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PlayVideoFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/fragments/PlayVideoFragment;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method public static bundleWithVideoUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p0, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "video_url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    new-instance v0, Lcom/airbnb/android/fragments/PlayVideoFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/PlayVideoFragment;-><init>()V

    .line 34
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v1, 0x7f0300fb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 43
    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PlayVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/PlayVideoFragment;->mMediaController:Landroid/widget/MediaController;

    .line 44
    iget-object v1, p0, Lcom/airbnb/android/fragments/PlayVideoFragment;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PlayVideoFragment;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 45
    iget-object v1, p0, Lcom/airbnb/android/fragments/PlayVideoFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PlayVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "video_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 47
    iget-object v1, p0, Lcom/airbnb/android/fragments/PlayVideoFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/airbnb/android/fragments/PlayVideoFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PlayVideoFragment$1;-><init>(Lcom/airbnb/android/fragments/PlayVideoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 57
    iget-object v1, p0, Lcom/airbnb/android/fragments/PlayVideoFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/airbnb/android/fragments/PlayVideoFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PlayVideoFragment$2;-><init>(Lcom/airbnb/android/fragments/PlayVideoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    return-object v0
.end method
