.class public Lnet/hockeyapp/android/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field public static final ENGLISH:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 122
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Crash Data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "The app found information about previous crashes. Would you like to send this data to the developer?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Send"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Download Failed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "The update could not be downloaded. Would you like to try again?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Cancel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Retry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Please install the latest version to continue to use this app."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Update Available"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Show information about the new update?"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Show"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "Build Expired"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "This has build has expired. Please check HockeyApp for any updates."

    aput-object v2, v0, v1

    sput-object v0, Lnet/hockeyapp/android/Strings;->ENGLISH:[Ljava/lang/String;

    return-void
.end method

.method public static get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;
    .registers 4
    .param p0, "listener"    # Lnet/hockeyapp/android/StringListener;
    .param p1, "resourceID"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 167
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/StringListener;->getStringForResource(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_7
    if-nez v0, :cond_14

    if-ltz p1, :cond_14

    sget-object v1, Lnet/hockeyapp/android/Strings;->ENGLISH:[Ljava/lang/String;

    array-length v1, v1

    if-gt p1, v1, :cond_14

    .line 171
    sget-object v1, Lnet/hockeyapp/android/Strings;->ENGLISH:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 174
    :cond_14
    return-object v0
.end method
