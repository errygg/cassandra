class cassandra::repo::debian(
    $repo_name,
    $location,
    $repos,
    $release,
    $key_source,
    $pin
) {
    apt::source { $repo_name:
        location          => $location,
        release           => $release,
        repos             => $repos,
        key               => "B999A372",
        key_source        => $key_source,
        pin               => $pin,
        include_src       => false,
    }
}
