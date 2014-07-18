.class Lcom/airbnb/android/views/NightsSeekBar$1;
.super Ljava/lang/Object;
.source "NightsSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/NightsSeekBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/NightsSeekBar;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/NightsSeekBar;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSeekBar$1;->this$0:Lcom/airbnb/android/views/NightsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "b"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSeekBar$1;->this$0:Lcom/airbnb/android/views/NightsSeekBar;

    # invokes: Lcom/airbnb/android/views/NightsSeekBar;->updateBadgeForProgress()V
    invoke-static {v0}, Lcom/airbnb/android/views/NightsSeekBar;->access$000(Lcom/airbnb/android/views/NightsSeekBar;)V

    .line 51
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 55
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSeekBar$1;->this$0:Lcom/airbnb/android/views/NightsSeekBar;

    invoke-virtual {v1}, Lcom/airbnb/android/views/NightsSeekBar;->getNights()I

    move-result v0

    .line 60
    .local v0, "nights":I
    packed-switch v0, :pswitch_data_3c

    .line 75
    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    :goto_e
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSeekBar$1;->this$0:Lcom/airbnb/android/views/NightsSeekBar;

    # invokes: Lcom/airbnb/android/views/NightsSeekBar;->updateBadgeForProgress()V
    invoke-static {v1}, Lcom/airbnb/android/views/NightsSeekBar;->access$000(Lcom/airbnb/android/views/NightsSeekBar;)V

    .line 81
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSeekBar$1;->this$0:Lcom/airbnb/android/views/NightsSeekBar;

    # getter for: Lcom/airbnb/android/views/NightsSeekBar;->mNightsChangedListener:Lcom/airbnb/android/interfaces/NightsChangedListener;
    invoke-static {v1}, Lcom/airbnb/android/views/NightsSeekBar;->access$100(Lcom/airbnb/android/views/NightsSeekBar;)Lcom/airbnb/android/interfaces/NightsChangedListener;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 82
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSeekBar$1;->this$0:Lcom/airbnb/android/views/NightsSeekBar;

    # getter for: Lcom/airbnb/android/views/NightsSeekBar;->mNightsChangedListener:Lcom/airbnb/android/interfaces/NightsChangedListener;
    invoke-static {v1}, Lcom/airbnb/android/views/NightsSeekBar;->access$100(Lcom/airbnb/android/views/NightsSeekBar;)Lcom/airbnb/android/interfaces/NightsChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/interfaces/NightsChangedListener;->onNightsChanged(I)V

    .line 84
    :cond_24
    return-void

    .line 62
    :pswitch_25
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_e

    .line 65
    :pswitch_2a
    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_e

    .line 68
    :pswitch_30
    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_e

    .line 71
    :pswitch_36
    const/16 v1, 0x4b

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_e

    .line 60
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2a
        :pswitch_30
        :pswitch_36
    .end packed-switch
.end method
